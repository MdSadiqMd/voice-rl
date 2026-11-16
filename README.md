# voice-rl

Experiments on why RL changes behaviours the reward cannot see, with speech as the testbed.
The problem, protocol and sources are in [docs/](docs/README.md).

| Path | Holds |
|---|---|
| `src/voicerl/` | library code: normaliser, probes, rewards, RL loop, predictor, projection |
| `toys/` | small numpy/torch checks of the theory |
| `configs/` | frozen run configs |
| `analysis/` | verdict and completeness checks |
| `tests/` | assert-based checks, run with `just test` |
| `data/`, `results/` | local only, not tracked |

Setup: `uv sync`, then `just` to list tasks.
