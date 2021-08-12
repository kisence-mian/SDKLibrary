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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->c:Z

    .line 21
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->f:I

    .line 22
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->g:Z

    .line 23
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->h:Z

    .line 24
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->i:Z

    .line 26
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->k:Z

    .line 27
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->l:Z

    .line 32
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->q:Z

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/TTAdConfig$1;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 186
    nop

    .line 187
    nop

    .line 188
    nop

    .line 190
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 192
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_1b} :catch_1c

    .line 195
    goto :goto_1f

    .line 193
    :catch_1c
    move-exception p1

    .line 194
    const-string p1, ""

    .line 196
    :goto_1f
    return-object p1
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->b:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 49
    :cond_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->b:Ljava/lang/String;

    .line 50
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomController()Lcom/bytedance/sdk/openadsdk/TTCustomController;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->r:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectDownloadNetworkType()[I
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->j:[I

    return-object v0
.end method

.method public getHttpStack()Lcom/bytedance/sdk/adnet/face/IHttpStack;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->m:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedClearTaskReset()[Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->p:[Ljava/lang/String;

    return-object v0
.end method

.method public getTTDownloadEventLogger()Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->n:Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    return-object v0
.end method

.method public getTTSecAbs()Lcom/bytedance/sdk/openadsdk/TTSecAbs;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->o:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    return-object v0
.end method

.method public getTitleBarTheme()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->f:I

    return v0
.end method

.method public isAllowShowNotify()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->g:Z

    return v0
.end method

.method public isAllowShowPageWhenScreenLock()Z
    .registers 2

    .line 106
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->i:Z

    return v0
.end method

.method public isAsyncInit()Z
    .registers 2

    .line 170
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->q:Z

    return v0
.end method

.method public isDebug()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->h:Z

    return v0
.end method

.method public isPaid()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->c:Z

    return v0
.end method

.method public isSupportMultiProcess()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->l:Z

    return v0
.end method

.method public isUseTextureView()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->k:Z

    return v0
.end method

.method public setAllowShowNotify(Z)V
    .registers 2

    .line 94
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->g:Z

    .line 95
    return-void
.end method

.method public setAllowShowPageWhenScreenLock(Z)V
    .registers 2

    .line 110
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->i:Z

    .line 111
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->a:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setAsyncInit(Z)V
    .registers 2

    .line 174
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->q:Z

    .line 175
    return-void
.end method

.method public setCustomController(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->r:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    .line 183
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->e:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setDebug(Z)V
    .registers 2

    .line 102
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->h:Z

    .line 103
    return-void
.end method

.method public varargs setDirectDownloadNetworkType([I)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->j:[I

    .line 119
    return-void
.end method

.method public setHttpStack(Lcom/bytedance/sdk/adnet/face/IHttpStack;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->m:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    .line 143
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->d:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public varargs setNeedClearTaskReset([Ljava/lang/String;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->p:[Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setPaid(Z)V
    .registers 2

    .line 62
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->c:Z

    .line 63
    return-void
.end method

.method public setSupportMultiProcess(Z)V
    .registers 2

    .line 134
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->l:Z

    .line 135
    return-void
.end method

.method public setTTDownloadEventLogger(Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->n:Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    .line 151
    return-void
.end method

.method public setTTSecAbs(Lcom/bytedance/sdk/openadsdk/TTSecAbs;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->o:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    .line 159
    return-void
.end method

.method public setTitleBarTheme(I)V
    .registers 2

    .line 86
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->f:I

    .line 87
    return-void
.end method

.method public setUseTextureView(Z)V
    .registers 2

    .line 126
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->k:Z

    .line 127
    return-void
.end method
