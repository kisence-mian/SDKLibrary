.class public Lcom/bytedance/sdk/openadsdk/i/e/f;
.super Ljava/lang/Object;
.source "VideoRequest.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/i/e/f;->c:J

    .line 13
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/i/e/f;->d:J

    return-void
.end method
