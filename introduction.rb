my_self = {
  name: 'Deo Subarno',
  nickname: 'Kochan',
  pronouns: 'He/Him',
  skils: ['JS', 'TS', 'PHP', 'Ruby', 'MERN Stack', 'Next.js', 'Nest.js', 'Laravel', 'Docker', 'MySQL'],
  role: 'Backend Engineer',
  say_hello: -> { "Hello, my name is #{my_self[:name]}. You can call me #{my_self[:nickname]}" }
}

puts my_self[:say_hello].call
