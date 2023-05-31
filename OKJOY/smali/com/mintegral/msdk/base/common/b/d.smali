.class public final Lcom/mintegral/msdk/base/common/b/d;
.super Lcom/mintegral/msdk/base/common/b/b;
.source "MIntegralDirContext.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/b/b;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected final b()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/common/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    sget-object v1, Lcom/mintegral/msdk/base/common/b/c;->b:Lcom/mintegral/msdk/base/common/b/c;

    const-string v2, "Movies"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/b/d;->a(Ljava/util/ArrayList;Lcom/mintegral/msdk/base/common/b/c;Ljava/lang/String;)Lcom/mintegral/msdk/base/common/b/a;

    move-result-object v1

    .line 32
    sget-object v2, Lcom/mintegral/msdk/base/common/b/c;->c:Lcom/mintegral/msdk/base/common/b/c;

    const-string v3, ".Mintegral_VC"

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/b/a;->a(Lcom/mintegral/msdk/base/common/b/c;Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/mintegral/msdk/base/common/b/c;->d:Lcom/mintegral/msdk/base/common/b/c;

    const-string v2, ".mintegral700"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/b/d;->a(Ljava/util/ArrayList;Lcom/mintegral/msdk/base/common/b/c;Ljava/lang/String;)Lcom/mintegral/msdk/base/common/b/a;

    move-result-object v1

    .line 35
    sget-object v2, Lcom/mintegral/msdk/base/common/b/c;->f:Lcom/mintegral/msdk/base/common/b/c;

    const-string v3, "img"

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/b/a;->a(Lcom/mintegral/msdk/base/common/b/c;Ljava/lang/String;)V

    .line 36
    sget-object v2, Lcom/mintegral/msdk/base/common/b/c;->e:Lcom/mintegral/msdk/base/common/b/c;

    const-string v3, "res"

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/b/a;->a(Lcom/mintegral/msdk/base/common/b/c;Ljava/lang/String;)V

    .line 37
    sget-object v2, Lcom/mintegral/msdk/base/common/b/c;->g:Lcom/mintegral/msdk/base/common/b/c;

    const-string v3, "html"

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/b/a;->a(Lcom/mintegral/msdk/base/common/b/c;Ljava/lang/String;)V

    .line 38
    sget-object v2, Lcom/mintegral/msdk/base/common/b/c;->h:Lcom/mintegral/msdk/base/common/b/c;

    const-string v3, "apk"

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/b/a;->a(Lcom/mintegral/msdk/base/common/b/c;Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/mintegral/msdk/base/common/b/c;->i:Lcom/mintegral/msdk/base/common/b/c;

    const-string v2, "crashinfo"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/b/d;->a(Ljava/util/ArrayList;Lcom/mintegral/msdk/base/common/b/c;Ljava/lang/String;)Lcom/mintegral/msdk/base/common/b/a;

    .line 41
    sget-object v1, Lcom/mintegral/msdk/base/common/b/c;->j:Lcom/mintegral/msdk/base/common/b/c;

    const-string v2, "other"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/b/d;->a(Ljava/util/ArrayList;Lcom/mintegral/msdk/base/common/b/c;Ljava/lang/String;)Lcom/mintegral/msdk/base/common/b/a;

    .line 43
    return-object v0
.end method
