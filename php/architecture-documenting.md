Documenting PHP Architecture
=====

### Tools

There are several tools that allow you to write rules describing your application architecture.

- [https://github.com/carlosas/phpat](phpat) - PHP Architecture Tester is a static analysis tool to verify architectural requirements.
- [https://github.com/qossmic/deptrac](deptrac) - Deptrac is a static code analysis tool for PHP that helps you communicate, visualize and enforce architectural decisions in your projects.
- [https://github.com/phparkitect/arkitect](phparkitect) - PHPArkitect helps you to keep your PHP codebase coherent and solid, by permitting to add some architectural constraint check to your workflow.

### Architectural Decision Records (ADR)

https://adr.github.io/

> An Architectural Decision (AD) is a software design choice that addresses a functional or non-functional requirement that is architecturally significant. An Architecturally Significant Requirement (ASR) is a requirement that has a measurable effect on a software system’s architecture and quality. An Architectural Decision Record (ADR) captures a single AD, such as often done when writing personal notes or meeting minutes; the collection of ADRs created and maintained in a project constitute its decision log. All these are within the topic of Architectural Knowledge Management (AKM).

Custom PHPStan rules can be used to enforce ADRs in your project.

https://www.strangebuzz.com/en/blog/creating-custom-phpstan-rules-for-your-symfony-project
