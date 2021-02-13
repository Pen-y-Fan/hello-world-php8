<?php

declare(strict_types=1);

namespace HelloWorld\Tests;

use HelloWorld\HelloWorld;
use PHPUnit\Framework\TestCase;

class HelloWorldTest extends TestCase
{
    public function testHelloWorldCanBeConstructed(): void
    {
        $message = new HelloWorld(name:"Pen-Y-Fan");
        self::assertSame("Hello Pen-Y-Fan", $message->getMessage());
    }

    public function testHelloWorldDoesntNeedAName(): void
    {
        $message = new HelloWorld();
        self::assertSame("Hello, world!", $message->getMessage());
    }
}
