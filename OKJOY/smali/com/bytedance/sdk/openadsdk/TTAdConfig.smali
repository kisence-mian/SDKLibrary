.class public final Lcom/bytedance/sdk/openadsdk/TTAdConfig;
.super Ljava/lang/Object;
.source "TTAdConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    }
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
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->c:Z

    .line 16
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->f:I

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->g:Z

    .line 18
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->h:Z

    .line 19
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->i:Z

    .line 21
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->k:Z

    .line 22
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->l:Z

    .line 27
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->q:Z

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/TTAdConfig$1;)V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomController()Lcom/bytedance/sdk/openadsdk/TTCustomController;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->r:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectDownloadNetworkType()[I
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->j:[I

    return-object v0
.end method

.method public getHttpStack()Lcom/bytedance/sdk/adnet/face/IHttpStack;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->m:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedClearTaskReset()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->p:[Ljava/lang/String;

    return-object v0
.end method

.method public getTTDownloadEventLogger()Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->n:Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    return-object v0
.end method

.method public getTTSecAbs()Lcom/bytedance/sdk/openadsdk/TTSecAbs;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->o:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    return-object v0
.end method

.method public getTitleBarTheme()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->f:I

    return v0
.end method

.method public isAllowShowNotify()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->g:Z

    return v0
.end method

.method public isAllowShowPageWhenScreenLock()Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->i:Z

    return v0
.end method

.method public isAsyncInit()Z
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->q:Z

    return v0
.end method

.method public isDebug()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->h:Z

    return v0
.end method

.method public isPaid()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->c:Z

    return v0
.end method

.method public isSupportMultiProcess()Z
    .registers 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->l:Z

    return v0
.end method

.method public isUseTextureView()Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->k:Z

    return v0
.end method

.method public setAllowShowNotify(Z)V
    .registers 2

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->g:Z

    .line 88
    return-void
.end method

.method public setAllowShowPageWhenScreenLock(Z)V
    .registers 2

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->i:Z

    .line 104
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setAsyncInit(Z)V
    .registers 2

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->q:Z

    .line 168
    return-void
.end method

.method public setCustomController(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->r:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    .line 176
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->e:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setDebug(Z)V
    .registers 2

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->h:Z

    .line 96
    return-void
.end method

.method public varargs setDirectDownloadNetworkType([I)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->j:[I

    .line 112
    return-void
.end method

.method public setHttpStack(Lcom/bytedance/sdk/adnet/face/IHttpStack;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->m:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    .line 136
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->d:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public varargs setNeedClearTaskReset([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->p:[Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setPaid(Z)V
    .registers 2

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->c:Z

    .line 56
    return-void
.end method

.method public setSupportMultiProcess(Z)V
    .registers 2

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->l:Z

    .line 128
    return-void
.end method

.method public setTTDownloadEventLogger(Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->n:Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    .line 144
    return-void
.end method

.method public setTTSecAbs(Lcom/bytedance/sdk/openadsdk/TTSecAbs;)V
    .registers 2

    .prologue
    .line 151
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->o:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    .line 152
    return-void
.end method

.method public setTitleBarTheme(I)V
    .registers 2

    .prologue
    .line 79
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->f:I

    .line 80
    return-void
.end method

.method public setUseTextureView(Z)V
    .registers 2

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->k:Z

    .line 120
    return-void
.end method
