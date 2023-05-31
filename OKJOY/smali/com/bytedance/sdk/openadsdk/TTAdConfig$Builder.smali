.class public Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
.super Ljava/lang/Object;
.source "TTAdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/TTAdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:[I

.field private k:Z

.field private l:Z

.field private m:Lcom/bytedance/sdk/adnet/face/IHttpStack;

.field private n:Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

.field private o:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

.field private p:[Ljava/lang/String;

.field private q:Z

.field private r:Lcom/bytedance/sdk/openadsdk/TTCustomController;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->c:Z

    .line 186
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->f:I

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->g:Z

    .line 188
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->h:Z

    .line 189
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->i:Z

    .line 191
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->k:Z

    .line 192
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->l:Z

    .line 197
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->q:Z

    return-void
.end method


# virtual methods
.method public allowShowNotify(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->g:Z

    .line 232
    return-object p0
.end method

.method public allowShowPageWhenScreenLock(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->i:Z

    .line 242
    return-object p0
.end method

.method public appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->a:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->b:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public asyncInit(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->q:Z

    .line 287
    return-object p0
.end method

.method public build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;
    .registers 3

    .prologue
    .line 296
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdConfig$1;)V

    .line 297
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setAppId(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setAppName(Ljava/lang/String;)V

    .line 299
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->c:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setPaid(Z)V

    .line 300
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setKeywords(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setData(Ljava/lang/String;)V

    .line 302
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->f:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setTitleBarTheme(I)V

    .line 303
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->g:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setAllowShowNotify(Z)V

    .line 304
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->h:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setDebug(Z)V

    .line 305
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->i:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setAllowShowPageWhenScreenLock(Z)V

    .line 306
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->j:[I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setDirectDownloadNetworkType([I)V

    .line 307
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->k:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setUseTextureView(Z)V

    .line 308
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->l:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setSupportMultiProcess(Z)V

    .line 309
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->m:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setHttpStack(Lcom/bytedance/sdk/adnet/face/IHttpStack;)V

    .line 310
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->n:Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setTTDownloadEventLogger(Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;)V

    .line 311
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->o:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setTTSecAbs(Lcom/bytedance/sdk/openadsdk/TTSecAbs;)V

    .line 312
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->p:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setNeedClearTaskReset([Ljava/lang/String;)V

    .line 313
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->q:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setAsyncInit(Z)V

    .line 314
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->r:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->setCustomController(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    .line 315
    return-object v0
.end method

.method public customController(Lcom/bytedance/sdk/openadsdk/TTCustomController;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 291
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->r:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    .line 292
    return-object p0
.end method

.method public data(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->e:Ljava/lang/String;

    .line 222
    return-object p0
.end method

.method public debug(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->h:Z

    .line 237
    return-object p0
.end method

.method public varargs directDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 246
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->j:[I

    .line 247
    return-object p0
.end method

.method public globalDownloadListener(Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 267
    return-object p0
.end method

.method public httpStack(Lcom/bytedance/sdk/adnet/face/IHttpStack;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 261
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->m:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    .line 262
    return-object p0
.end method

.method public keywords(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->d:Ljava/lang/String;

    .line 217
    return-object p0
.end method

.method public varargs needClearTaskReset([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 281
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->p:[Ljava/lang/String;

    .line 282
    return-object p0
.end method

.method public paid(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->c:Z

    .line 212
    return-object p0
.end method

.method public supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->l:Z

    .line 257
    return-object p0
.end method

.method public titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 226
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->f:I

    .line 227
    return-object p0
.end method

.method public ttDownloadEventLogger(Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 271
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->n:Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    .line 272
    return-object p0
.end method

.method public ttSecAbs(Lcom/bytedance/sdk/openadsdk/TTSecAbs;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 276
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->o:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    .line 277
    return-object p0
.end method

.method public useTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    .registers 2

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->k:Z

    .line 252
    return-object p0
.end method
