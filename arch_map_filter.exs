%CleanMixer.ArchMap{
  components: [
    %CleanMixer.ArchMap.Component{
      file_dependencies: [
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Filter],
            path: "lib/clean_mixer/arch_map/filter.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Filter.Pattern,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :struct
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :struct
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap, Inspect.CleanMixer.ArchMap],
            path: "lib/clean_mixer/arch_map.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Any, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.Graph,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :struct
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :struct}
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime, :struct],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Filter],
            path: "lib/clean_mixer/arch_map/filter.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Filter.Pattern,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :struct
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :struct
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Component],
            path: "lib/clean_mixer/arch_map/component.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime, :struct],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Filter],
            path: "lib/clean_mixer/arch_map/filter.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Filter.Pattern,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :struct
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :struct
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Dependency],
            path: "lib/clean_mixer/arch_map/dependency.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              }
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Filter],
            path: "lib/clean_mixer/arch_map/filter.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Filter.Pattern,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :struct
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :struct
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Filter.Pattern],
            path: "lib/clean_mixer/arch_map/filter/pattern.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Regex, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime}
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime, :struct],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap, Inspect.CleanMixer.ArchMap],
            path: "lib/clean_mixer/arch_map.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Any, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.Graph,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :struct
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :struct}
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Component],
            path: "lib/clean_mixer/arch_map/component.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap, Inspect.CleanMixer.ArchMap],
            path: "lib/clean_mixer/arch_map.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Any, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.Graph,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :struct
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :struct}
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Dependency],
            path: "lib/clean_mixer/arch_map/dependency.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              }
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap, Inspect.CleanMixer.ArchMap],
            path: "lib/clean_mixer/arch_map.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Any, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.Graph,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :struct
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :struct}
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.SourceFile],
            path: "lib/clean_mixer/code_map/source_file.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap, Inspect.CleanMixer.ArchMap],
            path: "lib/clean_mixer/arch_map.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Any, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.Graph,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :struct
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :struct}
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.Graph],
            path: "lib/clean_mixer/graph.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime}
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Component],
            path: "lib/clean_mixer/arch_map/component.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.CodeModule],
            path: "lib/clean_mixer/code_map/code_module.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Keyword, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Code, ref_type: :runtime}
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Component],
            path: "lib/clean_mixer/arch_map/component.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.FileDependency],
            path: "lib/clean_mixer/code_map/file_dependency.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: List, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Component],
            path: "lib/clean_mixer/arch_map/component.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.SourceFile],
            path: "lib/clean_mixer/code_map/source_file.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Dependency],
            path: "lib/clean_mixer/arch_map/dependency.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Component],
            path: "lib/clean_mixer/arch_map/component.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Dependency],
            path: "lib/clean_mixer/arch_map/dependency.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.FileDependency],
            path: "lib/clean_mixer/code_map/file_dependency.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: List, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        }
      ],
      files: [
        %CleanMixer.CodeMap.SourceFile{
          modules: [CleanMixer.ArchMap.Filter],
          path: "lib/clean_mixer/arch_map/filter.ex",
          references: [
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Typespec, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: Kernel.LexicalTracker,
              ref_type: :compile
            },
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.ArchMap.Filter.Pattern,
              ref_type: :runtime
            },
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.ArchMap.Dependency,
              ref_type: :runtime
            },
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.ArchMap.Component,
              ref_type: :runtime
            },
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.ArchMap,
              ref_type: :runtime
            },
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.ArchMap.Component,
              ref_type: :struct
            },
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.ArchMap.Dependency,
              ref_type: :struct
            }
          ]
        },
        %CleanMixer.CodeMap.SourceFile{
          modules: [CleanMixer.ArchMap, Inspect.CleanMixer.ArchMap],
          path: "lib/clean_mixer/arch_map.ex",
          references: [
            %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Typespec, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: Kernel.LexicalTracker,
              ref_type: :compile
            },
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Inspect, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Any, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: CleanMixer.Graph, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.CodeMap.SourceFile,
              ref_type: :runtime
            },
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.ArchMap.Dependency,
              ref_type: :runtime
            },
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.ArchMap.Component,
              ref_type: :runtime
            },
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.ArchMap.Component,
              ref_type: :struct
            },
            %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :struct}
          ]
        },
        %CleanMixer.CodeMap.SourceFile{
          modules: [CleanMixer.ArchMap.Component],
          path: "lib/clean_mixer/arch_map/component.ex",
          references: [
            %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Typespec, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: Kernel.LexicalTracker,
              ref_type: :compile
            },
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.CodeMap.SourceFile,
              ref_type: :runtime
            },
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.CodeMap.FileDependency,
              ref_type: :runtime
            },
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.CodeMap.CodeModule,
              ref_type: :runtime
            }
          ]
        },
        %CleanMixer.CodeMap.SourceFile{
          modules: [CleanMixer.ArchMap.Filter.Pattern],
          path: "lib/clean_mixer/arch_map/filter/pattern.ex",
          references: [
            %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Typespec, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: Kernel.LexicalTracker,
              ref_type: :compile
            },
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Regex, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime}
          ]
        },
        %CleanMixer.CodeMap.SourceFile{
          modules: [CleanMixer.ArchMap.Dependency],
          path: "lib/clean_mixer/arch_map/dependency.ex",
          references: [
            %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Typespec, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: Kernel.LexicalTracker,
              ref_type: :compile
            },
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.CodeMap.FileDependency,
              ref_type: :runtime
            },
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.ArchMap.Component,
              ref_type: :runtime
            }
          ]
        }
      ],
      meta: %{config_path: "lib/clean_mixer/arch_map", tags: [group: "core_domain"]},
      name: "arch_map"
    },
    %CleanMixer.ArchMap.Component{
      file_dependencies: [
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.ModuleReference],
            path: "lib/clean_mixer/code_map/module_reference.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.CodeModule],
            path: "lib/clean_mixer/code_map/code_module.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Keyword, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Code, ref_type: :runtime}
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.FileDependency],
            path: "lib/clean_mixer/code_map/file_dependency.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: List, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.CodeModule],
            path: "lib/clean_mixer/code_map/code_module.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Keyword, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Code, ref_type: :runtime}
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.FileDependency],
            path: "lib/clean_mixer/code_map/file_dependency.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: List, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.ModuleReference],
            path: "lib/clean_mixer/code_map/module_reference.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.FileDependency],
            path: "lib/clean_mixer/code_map/file_dependency.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: List, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.SourceFile],
            path: "lib/clean_mixer/code_map/source_file.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.SourceFile],
            path: "lib/clean_mixer/code_map/source_file.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.CodeModule],
            path: "lib/clean_mixer/code_map/code_module.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Keyword, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Code, ref_type: :runtime}
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.SourceFile],
            path: "lib/clean_mixer/code_map/source_file.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.ModuleReference],
            path: "lib/clean_mixer/code_map/module_reference.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap],
            path: "lib/clean_mixer/code_map.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.Graph,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :struct
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.FileDependency],
            path: "lib/clean_mixer/code_map/file_dependency.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: List, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime, :struct],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap],
            path: "lib/clean_mixer/code_map.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.Graph,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :struct
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.SourceFile],
            path: "lib/clean_mixer/code_map/source_file.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap],
            path: "lib/clean_mixer/code_map.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.Graph,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :struct
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.Graph],
            path: "lib/clean_mixer/graph.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime}
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.Behaviour],
            path: "lib/clean_mixer/code_map/behaviour.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.CodeModule],
            path: "lib/clean_mixer/code_map/code_module.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Keyword, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Code, ref_type: :runtime}
            ]
          }
        }
      ],
      files: [
        %CleanMixer.CodeMap.SourceFile{
          modules: [CleanMixer.CodeMap.ModuleReference],
          path: "lib/clean_mixer/code_map/module_reference.ex",
          references: [
            %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Typespec, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: Kernel.LexicalTracker,
              ref_type: :compile
            },
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.CodeMap.CodeModule,
              ref_type: :runtime
            }
          ]
        },
        %CleanMixer.CodeMap.SourceFile{
          modules: [CleanMixer.CodeMap.FileDependency],
          path: "lib/clean_mixer/code_map/file_dependency.ex",
          references: [
            %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Typespec, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: Kernel.LexicalTracker,
              ref_type: :compile
            },
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: List, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.CodeMap.SourceFile,
              ref_type: :runtime
            },
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.CodeMap.ModuleReference,
              ref_type: :runtime
            },
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.CodeMap.CodeModule,
              ref_type: :runtime
            }
          ]
        },
        %CleanMixer.CodeMap.SourceFile{
          modules: [CleanMixer.CodeMap.SourceFile],
          path: "lib/clean_mixer/code_map/source_file.ex",
          references: [
            %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Typespec, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: Kernel.LexicalTracker,
              ref_type: :compile
            },
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.CodeMap.ModuleReference,
              ref_type: :runtime
            },
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.CodeMap.CodeModule,
              ref_type: :runtime
            }
          ]
        },
        %CleanMixer.CodeMap.SourceFile{
          modules: [CleanMixer.CodeMap],
          path: "lib/clean_mixer/code_map.ex",
          references: [
            %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Typespec, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: Kernel.LexicalTracker,
              ref_type: :compile
            },
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: CleanMixer.Graph, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.CodeMap.SourceFile,
              ref_type: :runtime
            },
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.CodeMap.FileDependency,
              ref_type: :runtime
            },
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.CodeMap.SourceFile,
              ref_type: :struct
            }
          ]
        },
        %CleanMixer.CodeMap.SourceFile{
          modules: [CleanMixer.CodeMap.CodeModule],
          path: "lib/clean_mixer/code_map/code_module.ex",
          references: [
            %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Typespec, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: Kernel.LexicalTracker,
              ref_type: :compile
            },
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Keyword, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Code, ref_type: :runtime}
          ]
        },
        %CleanMixer.CodeMap.SourceFile{
          modules: [CleanMixer.CodeMap.Behaviour],
          path: "lib/clean_mixer/code_map/behaviour.ex",
          references: [
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Typespec, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: Kernel.LexicalTracker,
              ref_type: :compile
            },
            %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
            %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
            %CleanMixer.CodeMap.ModuleReference{
              module_name: CleanMixer.CodeMap.CodeModule,
              ref_type: :runtime
            }
          ]
        }
      ],
      meta: %{config_path: "lib/clean_mixer/code_map", tags: [group: "core_domain"]},
      name: "code_map"
    }
  ],
  dependencies: [
    %CleanMixer.ArchMap.Dependency{
      files: [
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap, Inspect.CleanMixer.ArchMap],
            path: "lib/clean_mixer/arch_map.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Any, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.Graph,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :struct
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :struct}
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.SourceFile],
            path: "lib/clean_mixer/code_map/source_file.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Component],
            path: "lib/clean_mixer/arch_map/component.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.CodeModule],
            path: "lib/clean_mixer/code_map/code_module.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Keyword, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Code, ref_type: :runtime}
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Component],
            path: "lib/clean_mixer/arch_map/component.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.FileDependency],
            path: "lib/clean_mixer/code_map/file_dependency.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: List, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Component],
            path: "lib/clean_mixer/arch_map/component.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.SourceFile],
            path: "lib/clean_mixer/code_map/source_file.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        },
        %CleanMixer.CodeMap.FileDependency{
          ref_types: [:runtime],
          source: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Dependency],
            path: "lib/clean_mixer/arch_map/dependency.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              }
            ]
          },
          target: %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.FileDependency],
            path: "lib/clean_mixer/code_map/file_dependency.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: List, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        }
      ],
      source: %CleanMixer.ArchMap.Component{
        file_dependencies: [
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap.Filter],
              path: "lib/clean_mixer/arch_map/filter.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Filter.Pattern,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Dependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :struct
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Dependency,
                  ref_type: :struct
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap, Inspect.CleanMixer.ArchMap],
              path: "lib/clean_mixer/arch_map.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Any, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.Graph,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Dependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :struct
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :struct}
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime, :struct],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap.Filter],
              path: "lib/clean_mixer/arch_map/filter.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Filter.Pattern,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Dependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :struct
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Dependency,
                  ref_type: :struct
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap.Component],
              path: "lib/clean_mixer/arch_map/component.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.FileDependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime, :struct],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap.Filter],
              path: "lib/clean_mixer/arch_map/filter.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Filter.Pattern,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Dependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :struct
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Dependency,
                  ref_type: :struct
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap.Dependency],
              path: "lib/clean_mixer/arch_map/dependency.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.FileDependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :runtime
                }
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap.Filter],
              path: "lib/clean_mixer/arch_map/filter.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Filter.Pattern,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Dependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :struct
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Dependency,
                  ref_type: :struct
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap.Filter.Pattern],
              path: "lib/clean_mixer/arch_map/filter/pattern.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Regex, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime}
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime, :struct],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap, Inspect.CleanMixer.ArchMap],
              path: "lib/clean_mixer/arch_map.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Any, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.Graph,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Dependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :struct
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :struct}
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap.Component],
              path: "lib/clean_mixer/arch_map/component.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.FileDependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap, Inspect.CleanMixer.ArchMap],
              path: "lib/clean_mixer/arch_map.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Any, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.Graph,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Dependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :struct
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :struct}
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap.Dependency],
              path: "lib/clean_mixer/arch_map/dependency.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.FileDependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :runtime
                }
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap, Inspect.CleanMixer.ArchMap],
              path: "lib/clean_mixer/arch_map.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Any, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.Graph,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Dependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :struct
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :struct}
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.SourceFile],
              path: "lib/clean_mixer/code_map/source_file.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.ModuleReference,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap, Inspect.CleanMixer.ArchMap],
              path: "lib/clean_mixer/arch_map.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Any, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.Graph,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Dependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :struct
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :struct}
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.Graph],
              path: "lib/clean_mixer/graph.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime}
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap.Component],
              path: "lib/clean_mixer/arch_map/component.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.FileDependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.CodeModule],
              path: "lib/clean_mixer/code_map/code_module.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Keyword, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Code, ref_type: :runtime}
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap.Component],
              path: "lib/clean_mixer/arch_map/component.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.FileDependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.FileDependency],
              path: "lib/clean_mixer/code_map/file_dependency.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: List, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.ModuleReference,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap.Component],
              path: "lib/clean_mixer/arch_map/component.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.FileDependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.SourceFile],
              path: "lib/clean_mixer/code_map/source_file.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.ModuleReference,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap.Dependency],
              path: "lib/clean_mixer/arch_map/dependency.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.FileDependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :runtime
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap.Component],
              path: "lib/clean_mixer/arch_map/component.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.FileDependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.ArchMap.Dependency],
              path: "lib/clean_mixer/arch_map/dependency.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.FileDependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.ArchMap.Component,
                  ref_type: :runtime
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.FileDependency],
              path: "lib/clean_mixer/code_map/file_dependency.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: List, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.ModuleReference,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            }
          }
        ],
        files: [
          %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Filter],
            path: "lib/clean_mixer/arch_map/filter.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Filter.Pattern,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :struct
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :struct
              }
            ]
          },
          %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap, Inspect.CleanMixer.ArchMap],
            path: "lib/clean_mixer/arch_map.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Any, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.Graph,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Dependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :struct
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Inspect.Opts, ref_type: :struct}
            ]
          },
          %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Component],
            path: "lib/clean_mixer/arch_map/component.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Filter.Pattern],
            path: "lib/clean_mixer/arch_map/filter/pattern.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Regex, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime}
            ]
          },
          %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.ArchMap.Dependency],
            path: "lib/clean_mixer/arch_map/dependency.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.ArchMap.Component,
                ref_type: :runtime
              }
            ]
          }
        ],
        meta: %{config_path: "lib/clean_mixer/arch_map", tags: [group: "core_domain"]},
        name: "arch_map"
      },
      target: %CleanMixer.ArchMap.Component{
        file_dependencies: [
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.ModuleReference],
              path: "lib/clean_mixer/code_map/module_reference.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.CodeModule],
              path: "lib/clean_mixer/code_map/code_module.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Keyword, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Code, ref_type: :runtime}
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.FileDependency],
              path: "lib/clean_mixer/code_map/file_dependency.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: List, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.ModuleReference,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.CodeModule],
              path: "lib/clean_mixer/code_map/code_module.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Keyword, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Code, ref_type: :runtime}
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.FileDependency],
              path: "lib/clean_mixer/code_map/file_dependency.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: List, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.ModuleReference,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.ModuleReference],
              path: "lib/clean_mixer/code_map/module_reference.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.FileDependency],
              path: "lib/clean_mixer/code_map/file_dependency.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: List, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.ModuleReference,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.SourceFile],
              path: "lib/clean_mixer/code_map/source_file.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.ModuleReference,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.SourceFile],
              path: "lib/clean_mixer/code_map/source_file.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.ModuleReference,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.CodeModule],
              path: "lib/clean_mixer/code_map/code_module.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Keyword, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Code, ref_type: :runtime}
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.SourceFile],
              path: "lib/clean_mixer/code_map/source_file.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.ModuleReference,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.ModuleReference],
              path: "lib/clean_mixer/code_map/module_reference.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap],
              path: "lib/clean_mixer/code_map.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.Graph,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.FileDependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :struct
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.FileDependency],
              path: "lib/clean_mixer/code_map/file_dependency.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: List, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.ModuleReference,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime, :struct],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap],
              path: "lib/clean_mixer/code_map.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.Graph,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.FileDependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :struct
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.SourceFile],
              path: "lib/clean_mixer/code_map/source_file.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.ModuleReference,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap],
              path: "lib/clean_mixer/code_map.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.Graph,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.FileDependency,
                  ref_type: :runtime
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.SourceFile,
                  ref_type: :struct
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.Graph],
              path: "lib/clean_mixer/graph.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime}
              ]
            }
          },
          %CleanMixer.CodeMap.FileDependency{
            ref_types: [:runtime],
            source: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.Behaviour],
              path: "lib/clean_mixer/code_map/behaviour.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: CleanMixer.CodeMap.CodeModule,
                  ref_type: :runtime
                }
              ]
            },
            target: %CleanMixer.CodeMap.SourceFile{
              modules: [CleanMixer.CodeMap.CodeModule],
              path: "lib/clean_mixer/code_map/code_module.ex",
              references: [
                %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.Typespec,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: Kernel.LexicalTracker,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
                %CleanMixer.CodeMap.ModuleReference{
                  module_name: ArgumentError,
                  ref_type: :compile
                },
                %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Keyword, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
                %CleanMixer.CodeMap.ModuleReference{module_name: Code, ref_type: :runtime}
              ]
            }
          }
        ],
        files: [
          %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.ModuleReference],
            path: "lib/clean_mixer/code_map/module_reference.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.FileDependency],
            path: "lib/clean_mixer/code_map/file_dependency.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: MapSet, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: List, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.SourceFile],
            path: "lib/clean_mixer/code_map/source_file.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.ModuleReference,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          },
          %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap],
            path: "lib/clean_mixer/code_map.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :digraph, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.Graph,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.FileDependency,
                ref_type: :runtime
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.SourceFile,
                ref_type: :struct
              }
            ]
          },
          %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.CodeModule],
            path: "lib/clean_mixer/code_map/code_module.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: String.Chars, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Protocol, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Module, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel.Utils, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: ArgumentError, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: Path, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Keyword, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Code, ref_type: :runtime}
            ]
          },
          %CleanMixer.CodeMap.SourceFile{
            modules: [CleanMixer.CodeMap.Behaviour],
            path: "lib/clean_mixer/code_map/behaviour.ex",
            references: [
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.Typespec,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{
                module_name: Kernel.LexicalTracker,
                ref_type: :compile
              },
              %CleanMixer.CodeMap.ModuleReference{module_name: Kernel, ref_type: :compile},
              %CleanMixer.CodeMap.ModuleReference{module_name: :erlang, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Map, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{module_name: Enum, ref_type: :runtime},
              %CleanMixer.CodeMap.ModuleReference{
                module_name: CleanMixer.CodeMap.CodeModule,
                ref_type: :runtime
              }
            ]
          }
        ],
        meta: %{config_path: "lib/clean_mixer/code_map", tags: [group: "core_domain"]},
        name: "code_map"
      }
    }
  ]
}