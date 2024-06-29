package com.cholong.cholong_be.aspect;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.util.Objects;


@Aspect
@Component
@Slf4j
public class LoggingAspect {

    @Around("within(@org.springframework.web.bind.annotation.RestController *)")
    public Object logBefore(ProceedingJoinPoint pjp) throws Throwable {
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = Objects.requireNonNull(attributes).getRequest();

        String url = request.getRequestURL().toString();
        String method = request.getMethod();
        String className = pjp.getSignature().getDeclaringTypeName();
        String methodName = pjp.getSignature().getName();

        long startAt = System.currentTimeMillis();

        log.info("----------> Request URL: {}", url);
        log.info("----------> HTTP Method: {}", method);
        log.info("----------> Invoked method: {}.{}", className, methodName);

        Object result = pjp.proceed();

        long endAt = System.currentTimeMillis();

        log.info(
                "----------> RESPONSE : {}({}) = {} ({}ms)",
                pjp.getSignature().getDeclaringTypeName(),
                pjp.getSignature().getName(), result, endAt-startAt
        );

        return result;
    }
}