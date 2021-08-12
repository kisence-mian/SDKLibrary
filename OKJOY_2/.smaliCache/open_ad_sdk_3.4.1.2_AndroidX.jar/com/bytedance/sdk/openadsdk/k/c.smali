.class public Lcom/bytedance/sdk/openadsdk/k/c;
.super Ljava/lang/Object;
.source "TrackAdUrlImpl4MultiProcess.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/k/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 25
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 19
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->b(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 14
    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->a(Ljava/lang/String;Ljava/util/List;Z)V

    .line 15
    return-void
.end method
