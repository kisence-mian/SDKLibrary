.class public final Lcom/tapjoy/internal/jh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/tapjoy/internal/jh;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Throwable;

.field private d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/tapjoy/internal/jh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/jh;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/jh;->a:Lcom/tapjoy/internal/jh;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/tapjoy/internal/jh;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/tapjoy/internal/jh;->b:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/tapjoy/internal/jh;->c:Ljava/lang/Throwable;

    .line 48
    if-nez p3, :cond_c

    .line 49
    iput-object p2, p0, Lcom/tapjoy/internal/jh;->d:[Ljava/lang/Object;

    return-void

    .line 51
    :cond_c
    nop

    .line 1056
    if-eqz p2, :cond_1f

    array-length p1, p2

    if-eqz p1, :cond_1f

    .line 1059
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 1060
    new-array p3, p1, [Ljava/lang/Object;

    .line 1061
    const/4 v0, 0x0

    invoke-static {p2, v0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1062
    nop

    .line 51
    iput-object p3, p0, Lcom/tapjoy/internal/jh;->d:[Ljava/lang/Object;

    .line 53
    return-void

    .line 1057
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "non-sensical empty or null argument array"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
