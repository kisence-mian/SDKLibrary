.class public final Lcom/bytedance/sdk/a/b/a/b/g$a;
.super Ljava/lang/ref/WeakReference;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/bytedance/sdk/a/b/a/b/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/a/b/g;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 531
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 532
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/b/g$a;->a:Ljava/lang/Object;

    .line 533
    return-void
.end method
