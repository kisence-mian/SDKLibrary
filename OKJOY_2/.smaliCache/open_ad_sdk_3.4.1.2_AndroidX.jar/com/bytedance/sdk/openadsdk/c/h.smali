.class public Lcom/bytedance/sdk/openadsdk/c/h;
.super Ljava/lang/Object;
.source "AdEventUploadResult.java"


# instance fields
.field final a:Z

.field final b:I

.field final c:Ljava/lang/String;

.field final d:Z


# direct methods
.method public constructor <init>(ZILjava/lang/String;Z)V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/c/h;->a:Z

    .line 17
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/c/h;->b:I

    .line 18
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/h;->c:Ljava/lang/String;

    .line 19
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/c/h;->d:Z

    .line 20
    return-void
.end method
