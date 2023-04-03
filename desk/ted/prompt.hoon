/-  spider, *gato
/+  *strandio
=,  strand=strand:spider
=,  dejs:format
=/  m  (strand ,vase)
|^  ted
++  mine-json
  %-  ot:dejs:format
  :~  :-  %choices
      %-  ar:dejs:format
      %-  ot:dejs:format
      ~[[%message (ot:dejs:format ~[[content+so:dejs:format]])]]
  ==
++  api-post
  |=  [api-key=tape prompt=tape]
  %:  send-request
    method=%'POST'
    url=url
    header-list=['Content-Type'^'application/json' 'Authorization'^(crip "Bearer {api-key}") ~]
    ^=  body
    %-  some  %-  as-octt:mimes:html
    %-  en-json:html
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
  =/  api-key  !<(tape vase.bird)
  ;<  ~  bind:m  (api-post api-key (trip text.bird))
  ;<  rep=client-response:iris  bind:m
    take-client-response
  ?>  ?=(%finished -.rep)
  ?~  full-file.rep  !!
  =/  body=cord  q.data.u.full-file.rep
  =/  jon=json  (need (de-json:html body))
  ~&  (mine-json jon)
  =/  results=(list cord)  (mine-json jon)
  ?~  results  !!
  %-  pure:m
  !>  [i.results vase.bird]
--
