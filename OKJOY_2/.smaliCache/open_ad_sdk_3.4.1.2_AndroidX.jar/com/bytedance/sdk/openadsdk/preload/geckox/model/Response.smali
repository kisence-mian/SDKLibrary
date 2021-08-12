.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public data:Ljava/lang/Object;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
