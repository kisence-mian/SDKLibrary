.class public Lcom/bytedance/sdk/openadsdk/core/a/c$a;
.super Ljava/lang/Object;
.source "InteractionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:D

.field public c:D

.field public d:J


# direct methods
.method public constructor <init>(IDDJ)V
    .registers 9

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c$a;->a:I

    .line 103
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/c$a;->a:I

    .line 104
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/a/c$a;->b:D

    .line 105
    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/a/c$a;->c:D

    .line 106
    iput-wide p6, p0, Lcom/bytedance/sdk/openadsdk/core/a/c$a;->d:J

    .line 107
    return-void
.end method
