class CodeTab < Liquid::Tag
    def initialize(tag_name, input, tokens)
        super
        @input = input
    end
  
    def render(context)
        # Split the input variable (omitting error checking)
        input_split = split_params(@input)
        btnClass = input_split[0].strip

        # Write the output HTML string
        output = '<div class="code-tab">'
        output += "<button class=\"code-tablinks\" onclick=\"openCode(event, '#{btnClass}Java')\" type=\"button\">"
        output += '<svg viewBox="0 0 24 24" height="15" width="15"><path d="M9.74 16.83s-.77.45.54.6a11.46 11.46 0 004.14-.18 7.18 7.18 0 001.1.54c-3.91 1.68-8.86-.1-5.78-1M9.26 14.64s-.86.64.45.77a16.18 16.18 0 005.35-.25 2.31 2.31 0 00.82.5c-4.74 1.38-10 .11-6.62-1" fill="#5382a1"></path><path d="M13.29 10.93A1.46 1.46 0 0113 13s2.45-1.27 1.32-2.85-1.81-2.15 2.55-4.7c0 0-6.85 1.71-3.58 5.48" fill="#e76f00"></path><path d="M18.47 18.45s.57.47-.62.83c-2.26.68-9.41.89-11.39 0-.72-.32.62-.75 1-.84a2.74 2.74 0 01.69-.07C7.4 17.84 3.06 19.49 6 20c8 1.29 14.55-.58 12.48-1.52M10.11 12.37s-3.64.87-1.29 1.18a28 28 0 004.81-.05c1.5-.13 3-.4 3-.4a6.51 6.51 0 00-.91.49c-3.69 1-10.83.52-8.77-.47a6.92 6.92 0 013.15-.75M16.63 16c3.75-1.95 2-3.83.8-3.57a3.59 3.59 0 00-.43.11.72.72 0 01.32-.25c2.4-.84 4.24 2.49-.77 3.81a.55.55 0 00.08-.1" fill="#5382a1"></path><path d="M14.36 1.36s2.08 2.08-2 5.28c-3.24 2.56-.74 4 0 5.7C10.5 10.63 9.11 9.12 10 7.72c1.37-2.06 5.16-3 4.32-6.36" fill="#e76f00"></path><path d="M10.47 21.3c3.61.23 9.14-.13 9.27-1.83 0 0-.25.65-3 1.16a29.56 29.56 0 01-9.11.14s.46.38 2.82.53" fill="#5382a1"></path></svg>'
        output += '<span>Java</span>'
        output += '</button>'
        output += "<button class=\"code-tablinks\" onclick=\"openCode(event, '#{btnClass}Py')\" type=\"button\">"
        output += '<svg viewBox="0 0 20 20" height="15" width="15"><path d="M9.93 0C4.86 0 5.18 2.21 5.18 2.21v2.37H10v.63H3.26S0 4.84 0 10s2.84 5 2.84 5h1.71v-2.4a2.71 2.71 0 012.81-2.91h4.76a2.59 2.59 0 002.7-2.62V2.66S15.23 0 9.93 0zM7.25 1.59a.88.88 0 11-.87.87.87.87 0 01.87-.87z" fill="#0071bc"></path><path d="M10.07 20c5.07 0 4.75-2.21 4.75-2.21V15.5H10v-.63h6.78s3.22.37 3.22-4.78-2.84-5-2.84-5h-1.71v2.4a2.67 2.67 0 01-2.77 2.82h-4.8a2.59 2.59 0 00-2.7 2.62v4.41S4.77 20 10.07 20zm2.67-1.52a.88.88 0 11.88-.88.87.87 0 01-.88.88z" fill="#ffc331"></path></svg>'
        output += '<span>Python</span>'
        output += '</button>'
        output += '</div>'
        # output += '<div id="#{btnClass}Java" class="code-tabcontent">'
        # output += '{% highlight java %}'
        # output += "{% include #{folder}/#{btnClass}.java %}"
        # output += '{% endhighlight %}'
        # output += '</div>'
        # output += '<div id="#{btnClass}Py" class="code-tabcontent">'
        # output += '{% highlight py %}'
        # output += "{% include #{folder}/#{btnClass}.py %}"
        # output += '{% endhighlight %}'
        # output += '</div>'
    
        # Render it on the page by returning it
        return output;
    end
  
    def split_params(params)
        params.split("|")
    end
end
  Liquid::Template.register_tag('codetab', CodeTab)