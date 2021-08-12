.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->a:Ljava/util/Map;

    .line 13
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->b:Ljava/lang/String;

    .line 14
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->c:I

    .line 15
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->d:Ljava/lang/String;

    .line 16
    return-void
.end method
