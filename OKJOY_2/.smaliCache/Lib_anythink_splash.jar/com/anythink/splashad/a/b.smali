.class public final Lcom/anythink/splashad/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/splashad/a/b$a;
    }
.end annotation


# instance fields
.field a:Z

.field b:Lcom/anythink/splashad/api/ATSplashAdListener;

.field c:J

.field d:Lcom/anythink/core/common/d/b;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/splashad/a/b;->g:Landroid/content/Context;

    .line 152
    return-void
.end method

.method private b(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V
    .registers 5

    .line 226
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/a/b$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/splashad/a/b$2;-><init>(Lcom/anythink/splashad/a/b;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method

.method private c()V
    .registers 3

    .line 155
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/a/b$1;

    invoke-direct {v1, p0}, Lcom/anythink/splashad/a/b$1;-><init>(Lcom/anythink/splashad/a/b;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method private d()V
    .registers 5

    .line 307
    new-instance v0, Lcom/anythink/core/common/d/d;

    invoke-direct {v0}, Lcom/anythink/core/common/d/d;-><init>()V

    .line 308
    iget-object v1, p0, Lcom/anythink/splashad/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/d/d;->q(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/anythink/splashad/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/d/d;->r(Ljava/lang/String;)V

    .line 310
    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/d/d;->s(Ljava/lang/String;)V

    .line 311
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/d/d;->p(Ljava/lang/String;)V

    .line 312
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/d/d;->b(Z)V

    .line 313
    const-string v1, "2001"

    const-string v2, ""

    const-string v3, "Splash FetchAd Timeout."

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;)V

    .line 315
    return-void
.end method

.method private e()Lcom/anythink/core/common/d/b;
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->d:Lcom/anythink/core/common/d/b;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/anythink/core/common/d/b;->e()I

    move-result v0

    if-gtz v0, :cond_d

    .line 319
    iget-object v0, p0, Lcom/anythink/splashad/a/b;->d:Lcom/anythink/core/common/d/b;

    return-object v0

    .line 321
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;I)V
    .registers 11

    .line 175
    const-string v0, ""

    iput-object p5, p0, Lcom/anythink/splashad/a/b;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 177
    iput-object p3, p0, Lcom/anythink/splashad/a/b;->e:Ljava/lang/String;

    .line 178
    iput-object p2, p0, Lcom/anythink/splashad/a/b;->f:Ljava/lang/String;

    .line 180
    new-instance p5, Lcom/anythink/core/common/d/d;

    invoke-direct {p5}, Lcom/anythink/core/common/d/d;-><init>()V

    .line 181
    invoke-virtual {p5, p2}, Lcom/anythink/core/common/d/d;->q(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p5, p3}, Lcom/anythink/core/common/d/d;->r(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p4}, Lcom/anythink/core/api/ATMediationRequestInfo;->getNetworkFirmId()I

    move-result p3

    invoke-virtual {p5, p3}, Lcom/anythink/core/common/d/d;->o(I)V

    .line 184
    const-string p3, "4"

    invoke-virtual {p5, p3}, Lcom/anythink/core/common/d/d;->s(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p4}, Lcom/anythink/core/api/ATMediationRequestInfo;->getAdSourceId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v1, "0"

    if-eqz p3, :cond_2d

    move-object p3, v1

    goto :goto_31

    :cond_2d
    invoke-virtual {p4}, Lcom/anythink/core/api/ATMediationRequestInfo;->getAdSourceId()Ljava/lang/String;

    move-result-object p3

    :goto_31
    invoke-virtual {p5, p3}, Lcom/anythink/core/common/d/d;->h(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p5, v1}, Lcom/anythink/core/common/d/d;->p(Ljava/lang/String;)V

    .line 187
    const/4 p3, 0x1

    invoke-virtual {p5, p3}, Lcom/anythink/core/common/d/d;->b(Z)V

    .line 191
    :try_start_3b
    invoke-virtual {p4}, Lcom/anythink/core/api/ATMediationRequestInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/i;->a(Ljava/lang/String;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    .line 192
    instance-of v2, v1, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v2, :cond_99

    .line 193
    move-object v2, v1

    check-cast v2, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    .line 194
    invoke-virtual {v2, p6}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->setFetchAdTimeout(I)V

    .line 195
    iput-boolean p3, p0, Lcom/anythink/splashad/a/b;->h:Z

    .line 196
    const/4 p6, 0x0

    iput-boolean p6, p0, Lcom/anythink/splashad/a/b;->a:Z

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/anythink/splashad/a/b;->c:J

    .line 200
    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/anythink/core/common/d/d;->o(Ljava/lang/String;)V

    .line 201
    nop

    .line 1405
    const/4 p6, 0x2

    iput p6, p5, Lcom/anythink/core/common/d/d;->m:I

    .line 203
    invoke-virtual {v1, p5}, Lcom/anythink/core/api/ATBaseAdAdapter;->setTrackingInfo(Lcom/anythink/core/common/d/d;)V

    .line 204
    sget-object p6, Lcom/anythink/core/common/b/e$e;->a:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->h:Ljava/lang/String;

    invoke-static {p5, p6, v2, v0}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object p6, p0, Lcom/anythink/splashad/a/b;->g:Landroid/content/Context;

    invoke-static {p6}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object p6

    const/16 v2, 0xa

    invoke-virtual {p6, v2, p5}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 207
    iget-object p6, p0, Lcom/anythink/splashad/a/b;->g:Landroid/content/Context;

    invoke-static {p6}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object p6

    invoke-virtual {p6, p3, p5}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 212
    invoke-virtual {p4}, Lcom/anythink/core/api/ATMediationRequestInfo;->getRequestParamMap()Ljava/util/Map;

    move-result-object p3

    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/anythink/core/common/o;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    new-instance p4, Lcom/anythink/splashad/a/b$a;

    move-object p5, v1

    check-cast p5, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-direct {p4, p0, p5}, Lcom/anythink/splashad/a/b$a;-><init>(Lcom/anythink/splashad/a/b;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    invoke-virtual {v1, p1, p3, p2, p4}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalLoad(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATCustomLoadListener;)V

    .line 213
    return-void

    .line 214
    :cond_99
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "The class isn\'t instanceof CustomSplashAdapter"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a1
    .catchall {:try_start_3b .. :try_end_a1} :catchall_a1

    .line 216
    :catchall_a1
    move-exception p1

    .line 217
    iget-object p2, p0, Lcom/anythink/splashad/a/b;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz p2, :cond_b5

    .line 218
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "2002"

    invoke-static {p2, v0, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    .line 219
    iget-object p2, p0, Lcom/anythink/splashad/a/b;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    invoke-interface {p2, p1}, Lcom/anythink/splashad/api/ATSplashAdListener;->onNoAdError(Lcom/anythink/core/api/AdError;)V

    .line 223
    :cond_b5
    return-void
.end method

.method public final a(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V
    .registers 8

    .line 49
    iget-boolean v0, p0, Lcom/anythink/splashad/a/b;->a:Z

    if-eqz v0, :cond_5

    .line 50
    return-void

    .line 56
    :cond_5
    const/4 v0, 0x0

    if-eqz p1, :cond_68

    .line 57
    invoke-virtual {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/anythink/splashad/a/b;->c:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/d/d;->d(J)V

    .line 58
    invoke-virtual {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    sget-object v2, Lcom/anythink/core/common/b/e$e;->b:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/anythink/splashad/a/b;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 61
    iget-object v1, p0, Lcom/anythink/splashad/a/b;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 63
    new-instance v1, Lcom/anythink/core/common/d/b;

    invoke-direct {v1}, Lcom/anythink/core/common/d/b;-><init>()V

    .line 64
    invoke-virtual {v1, v0}, Lcom/anythink/core/common/d/b;->b(I)V

    .line 65
    invoke-virtual {v1, p1}, Lcom/anythink/core/common/d/b;->a(Lcom/anythink/core/api/ATBaseAdAdapter;)V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/d/b;->c(J)V

    .line 67
    const-wide/32 v2, 0x927c0

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/d/b;->b(J)V

    .line 68
    invoke-virtual {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/d/b;->a(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/d/b;->a(J)V

    .line 71
    iput-object v1, p0, Lcom/anythink/splashad/a/b;->d:Lcom/anythink/core/common/d/b;

    .line 75
    :cond_68
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/splashad/a/b;->a:Z

    .line 76
    iput-boolean v0, p0, Lcom/anythink/splashad/a/b;->h:Z

    .line 77
    nop

    .line 1155
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    new-instance v0, Lcom/anythink/splashad/a/b$1;

    invoke-direct {v0, p0}, Lcom/anythink/splashad/a/b$1;-><init>(Lcom/anythink/splashad/a/b;)V

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public final a(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V
    .registers 7

    .line 83
    iget-boolean v0, p0, Lcom/anythink/splashad/a/b;->a:Z

    if-eqz v0, :cond_5

    .line 84
    return-void

    .line 89
    :cond_5
    if-eqz p1, :cond_16

    .line 90
    invoke-virtual {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    sget-object v1, Lcom/anythink/core/common/b/e$e;->b:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/splashad/a/b;->a:Z

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/splashad/a/b;->h:Z

    .line 94
    nop

    .line 1226
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/a/b$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/splashad/a/b$2;-><init>(Lcom/anythink/splashad/a/b;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method protected final a()Z
    .registers 2

    .line 168
    iget-boolean v0, p0, Lcom/anythink/splashad/a/b;->h:Z

    return v0
.end method

.method public final b()V
    .registers 2

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/splashad/a/b;->d:Lcom/anythink/core/common/d/b;

    .line 263
    iput-object v0, p0, Lcom/anythink/splashad/a/b;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 264
    return-void
.end method
