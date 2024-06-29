package com.cholong.cholong_be.api.sample.controller;

import com.cholong.cholong_be.api.sample.service.SampleService;
import com.cholong.cholong_be.api.sample.vo.SampleVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@RestController
@RequestMapping("/api/sample")
public class RestSampleController {

    private final SampleService sampleService;

    @Autowired
    public RestSampleController(SampleService sampleService){

        this.sampleService = sampleService;
    }

    @GetMapping
    public ResponseEntity<List<SampleVO>> getSampleList(SampleVO sampleVO) {
        return new ResponseEntity<List<SampleVO>>(
                sampleService.getSampleList(sampleVO), HttpStatus.OK
        );
    }

    @GetMapping("/{col1}")
    public ResponseEntity<SampleVO> getSample(@PathVariable("col1") int col1) {
        return new ResponseEntity<SampleVO>(
                sampleService.getSample(col1), HttpStatus.OK
        );
    }

    @PostMapping
    public ResponseEntity<Integer> addSample(@RequestBody SampleVO sampleVO) {
        return new ResponseEntity<Integer>(
                sampleService.addSample(sampleVO), HttpStatus.OK
        );
    }

    @PutMapping
    public ResponseEntity<Integer> updateSample(@RequestBody SampleVO sampleVO) {
        return new ResponseEntity<Integer>(
                sampleService.updateSample(sampleVO), HttpStatus.OK
        );
    }

    @DeleteMapping
    public ResponseEntity<Integer> deleteSample(@RequestBody ArrayList<Integer> deleteList) {
        return new ResponseEntity<Integer>(
                sampleService.deleteSample(deleteList), HttpStatus.OK
        );
    }
}
