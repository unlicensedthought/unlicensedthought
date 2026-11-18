### Adam Scheurer: AI evaluation and model-routing infrastructure, from industrial operations

I build the layer that makes AI dependable in real operations: cost-aware model routing that fails over when a provider degrades, and golden-set evaluation that refuses a release when quality regresses. I came to it from industrial and operational technology, where a system that fails quietly is the expensive kind.

**Selected work**

- **[armwright](https://github.com/unlicensedthought/armwright)**: online, cost-aware model routing with a cascade tier gate and a per-provider circuit breaker. A seeded 20,000-call replay compares it with always-frontier, cheapest, random and an oracle (a simulation, labeled as one); 20 tests. TypeScript, Apache-2.0.
- **[goldenwatch](https://github.com/unlicensedthought/goldenwatch)**: golden-set regression harness for LLM output. It fails closed: a budget-cut run is `incomplete`, an edited golden set is `incomparable`, a crashed job still reports, and `detectionPower` says when a set is too small to see the drop. TypeScript, Apache-2.0.
- **[unlicensed-thought](https://github.com/unlicensedthought/unlicensed-thought)**: the site at unlicensedthought.com, a prerendered SvelteKit SPA with a post-build gate for crawler tags and drafts.

**Before this**

Industrial weighing systems across a national network of 1,000+ locations; 15+ dealer-facing applications at John Deere; at Chevron, a compliance-controlled computing pilot for 80+ field technicians on SCADA and Rockwell automation software that took unmanaged devices from 95% to under 5%.

**Capabilities**

- Evaluation: golden sets, regression gates, detection power, failure-mode accounting
- Routing and inference cost: bandit routing, cascades, circuit breakers, cost ceilings
- Agent infrastructure: merge queues and gates that keep automated work reviewable
- Platform: TypeScript, Go, Python, Cloudflare Workers
- Industrial: OT/SCADA, Rockwell Studio 5000 and FactoryTalk, rollout and implementation

**Writing and contact**

Write-ups at [unlicensedthought.com](https://unlicensedthought.com) · [LinkedIn](https://www.linkedin.com/in/adam-scheurer)
