package se.lexicon.sprintailecture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Flux;
import se.lexicon.sprintailecture.service.OpenAIService;

@RestController
public class OpenAIChatController {

    @Autowired
    OpenAIService service;

    @GetMapping("/chat")
    public String chat(@RequestParam String question) {
        return  service.chat(question);
    }

    @GetMapping("/reactive-chat")
    public Flux<String> reactiveChat(@RequestParam String question){
        return service.reactiveChat(question);
    }
}
