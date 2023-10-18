/-  spider, *gato
/+  *strandio
=,  strand=strand:spider
=,  dejs:format
=/  m  (strand ,vase)
|^  ted
++  mine-json
  %-  ot
  :~  :-  %choices
      %-  ar
      %-  ot
      ~[[%message (ot ~[[content+so:dejs:format]])]]
  ==
++  api-post
  |=  [api-key=tape prompt=tape]
  %:  send-request
    method=%'POST'
    url=url
    header-list=['Content-Type'^'application/json' 'Authorization'^(crip "Bearer {api-key}") ~]
    ^=  body
    %-  some  %-  as-octt:mimes:html
    %-  trip  %-  en:json:html
    %-  pairs:enjs:format
      :~  ['model' s+'gpt-3.5-turbo']
          :-  'messages'
          [%a ~[(pairs:enjs:format ~[['role' s+'user'] ['content' s+(crip prompt)]])]]
      ==
  ==
++  url  'https://api.openai.com/v1/chat/completions'
++  ted
  ^-  thread:spider
  |=  arg=vase
  ^-  form:m
  =/  m  (strand ,vase)
  =/  =bird  !<(bird arg)
  =/  [api-key=tape ships=(list ship)]  !<([tape (list ship)] vase.bird)
  ?~  (find ~[p.flag.bird] ships)  !!
  ;<  ~  bind:m  (api-post api-key (trip text.bird))
  ;<  rep=client-response:iris  bind:m
    take-client-response
  ?>  ?=(%finished -.rep)
  ?~  full-file.rep  !!
  =/  body=cord  q.data.u.full-file.rep
  =/  jon=json  (need (de:json:html body))
  =/  results=(list cord)  (mine-json jon)
  ?~  results  !!
  %-  pure:m
  !>  [i.results vase.bird]
--
