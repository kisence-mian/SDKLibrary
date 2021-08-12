.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$a;
.super Ljava/lang/Object;
.source "ComponentModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "c"
    .end annotation
.end field

.field public b:I
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "clean_type"
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "version"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
