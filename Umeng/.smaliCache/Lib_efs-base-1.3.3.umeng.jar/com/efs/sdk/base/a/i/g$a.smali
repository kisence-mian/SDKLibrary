.class final Lcom/efs/sdk/base/a/i/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/a/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/g$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 111
    iput-object p1, p0, Lcom/efs/sdk/base/a/i/g$a;->a:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/efs/sdk/base/a/i/g$a;->b:Ljava/lang/String;

    .line 113
    iput-object p3, p0, Lcom/efs/sdk/base/a/i/g$a;->c:Ljava/lang/String;

    .line 114
    return-void
.end method