.class final Lcom/anythink/core/common/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/api/ATCustomLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/anythink/core/api/ATBaseAdAdapter;

.field b:J

.field final synthetic c:Lcom/anythink/core/common/e;


# direct methods
.method private constructor <init>(Lcom/anythink/core/common/e;JLcom/anythink/core/api/ATBaseAdAdapter;)V
    .registers 5

    .line 162
    iput-object p1, p0, Lcom/anythink/core/common/e$a;->c:Lcom/anythink/core/common/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-wide p2, p0, Lcom/anythink/core/common/e$a;->b:J

    .line 164
    iput-object p4, p0, Lcom/anythink/core/common/e$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 165
    return-void
.end method

.method synthetic constructor <init>(Lcom/anythink/core/common/e;JLcom/anythink/core/api/ATBaseAdAdapter;B)V
    .registers 6

    .line 158
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/core/common/e$a;-><init>(Lcom/anythink/core/common/e;JLcom/anythink/core/api/ATBaseAdAdapter;)V

    return-void
.end method


# virtual methods
.method public final varargs onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V
    .registers 6

    .line 174
    iget-object v0, p0, Lcom/anythink/core/common/e$a;->c:Lcom/anythink/core/common/e;

    iget-wide v1, p0, Lcom/anythink/core/common/e$a;->b:J

    iget-object v3, p0, Lcom/anythink/core/common/e$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz p1, :cond_d

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/anythink/core/common/e;->a(JLcom/anythink/core/api/ATBaseAdAdapter;Ljava/util/List;)V

    .line 175
    iget-object p1, p0, Lcom/anythink/core/common/e$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz p1, :cond_18

    .line 176
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->releaseLoadResource()V

    .line 178
    :cond_18
    return-void
.end method

.method public final onAdDataLoaded()V
    .registers 4

    .line 169
    iget-wide v0, p0, Lcom/anythink/core/common/e$a;->b:J

    iget-object v2, p0, Lcom/anythink/core/common/e$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/e;->a(JLcom/anythink/core/common/b/b;)V

    .line 170
    return-void
.end method

.method public final onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 182
    iget-object v0, p0, Lcom/anythink/core/common/e$a;->c:Lcom/anythink/core/common/e;

    iget-wide v1, p0, Lcom/anythink/core/common/e$a;->b:J

    iget-object v3, p0, Lcom/anythink/core/common/e$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    const-string v4, "4001"

    invoke-static {v4, p1, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    .line 1147
    invoke-virtual {v3}, Lcom/anythink/core/common/b/b;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object p2

    .line 1149
    iget-boolean v3, v0, Lcom/anythink/core/common/e;->d:Z

    if-nez v3, :cond_2b

    .line 1150
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/anythink/core/common/e;->d:Z

    .line 1152
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p2, v0, p1, v3, v4}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ILcom/anythink/core/api/AdError;J)V

    .line 1153
    sget-object v0, Lcom/anythink/core/common/b/e$e;->b:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/e$e;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, v1, p1}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_2b
    iget-object p1, p0, Lcom/anythink/core/common/e$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz p1, :cond_32

    .line 184
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->releaseLoadResource()V

    .line 186
    :cond_32
    return-void
.end method
