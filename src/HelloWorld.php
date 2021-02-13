<?php

declare(strict_types=1);

namespace HelloWorld;

class HelloWorld
{
    public function __construct(private ?string $name = null)
    {
    }

    public function getMessage(): string
    {
        return $this->name ? "Hello " . $this->name : "Hello, world!";
    }
}
