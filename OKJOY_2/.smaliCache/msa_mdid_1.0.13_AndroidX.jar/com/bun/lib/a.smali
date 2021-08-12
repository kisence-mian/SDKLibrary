.class public Lcom/bun/lib/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/bun/lib/a;


# instance fields
.field private a:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bun/lib/a;->a:I

    return-void
.end method

.method public static native a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static native a(Z)V
.end method

.method public static native a()Z
.end method

.method public static native b()Lcom/bun/lib/a;
.end method

.method public static native b(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
