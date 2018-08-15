# Leo

A small project with which to demonstrate the Observer and Recon in Elixir

## Tutorial

1. clone
2. `mix deps.get`
3. start a distributed node: `iex --name leo@127.0.0.1 --cookie crisp -S mix`
4. inspect `epmd -names` for node list
5. do a `curl localhost:4001/fibonacci?number=3`
6. open a second shell
7. remote shell into node `leo` as `rascal`: `iex --name rascal@127.0.0.1 --cookie crisp --remsh leo@127.0.0.1`
8. start the Observer: `:observer.start()`, navigate to the _Applications_ tab, and inspect the supervision tree.
Note, for example, the Mail Box size.
9. exit then introduce the Recon call: `:recon_trace.calls({Elixir.Leo, :fibonacci, :_}, 32, [{:scope, :local}, :return_to])`.
Explain the options.
10. do another `curl localhost:4001/fibonacci?number=3`
11. explain the output
12. write a _Cache_ Agent if time permits

## Resources

- Plataformatec post: http://blog.plataformatec.com.br/2016/05/tracing-and-observing-your-remote-node/
- Erlang in Anger: https://www.erlang-in-anger.com/
- Elixir guide: https://elixir-lang.org/getting-started/debugging.html
- Erlang + Elixir documentation
- Project + tooling documentation
