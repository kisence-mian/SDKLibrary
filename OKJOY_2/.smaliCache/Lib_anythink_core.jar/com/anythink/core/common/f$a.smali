.class public final Lcom/anythink/core/common/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/api/ATCustomLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lcom/anythink/core/api/ATBaseAdAdapter;

.field final synthetic b:Lcom/anythink/core/common/f;


# direct methods
.method private constructor <init>(Lcom/anythink/core/common/f;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .registers 3

    .line 1197
    iput-object p1, p0, Lcom/anythink/core/common/f$a;->b:Lcom/anythink/core/common/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1198
    iput-object p2, p0, Lcom/anythink/core/common/f$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 1199
    return-void
.end method

.method synthetic constructor <init>(Lcom/anythink/core/common/f;Lcom/anythink/core/api/ATBaseAdAdapter;B)V
    .registers 4

    .line 1194
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/f$a;-><init>(Lcom/anythink/core/common/f;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    return-void
.end method


# virtual methods
.method public final varargs onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V
    .registers 4

    .line 1208
    iget-object v0, p0, Lcom/anythink/core/common/f$a;->b:Lcom/anythink/core/common/f;

    iget-object v1, p0, Lcom/anythink/core/common/f$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz p1, :cond_b

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/util/List;)V

    .line 1209
    iget-object p1, p0, Lcom/anythink/core/common/f$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz p1, :cond_16

    .line 1210
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->releaseLoadResource()V

    .line 1212
    :cond_16
    return-void
.end method

.method public final onAdDataLoaded()V
    .registers 3

    .line 1203
    iget-object v0, p0, Lcom/anythink/core/common/f$a;->b:Lcom/anythink/core/common/f;

    iget-object v1, p0, Lcom/anythink/core/common/f$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/api/ATBaseAdAdapter;)V

    .line 1204
    return-void
.end method

.method public final onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1216
    iget-object v0, p0, Lcom/anythink/core/common/f$a;->b:Lcom/anythink/core/common/f;

    iget-object v1, p0, Lcom/anythink/core/common/f$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    const-string v2, "4001"

    invoke-static {v2, p1, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/AdError;)V

    .line 1217
    iget-object p1, p0, Lcom/anythink/core/common/f$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz p1, :cond_14

    .line 1218
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->releaseLoadResource()V

    .line 1220
    :cond_14
    return-void
.end method
