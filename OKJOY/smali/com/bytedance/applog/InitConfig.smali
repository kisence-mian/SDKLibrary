.class public Lcom/bytedance/applog/InitConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/bytedance/applog/IPicker;

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "aid"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "channel"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/applog/InitConfig;->i:I

    .line 48
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->a:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/bytedance/applog/InitConfig;->b:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public getAbClient()Ljava/lang/String;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getAbFeature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getAbGroup()Ljava/lang/String;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getAbVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAliyunUdid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleAid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestVersionCode()I
    .registers 2

    .prologue
    .line 335
    iget v0, p0, Lcom/bytedance/applog/InitConfig;->p:I

    return v0
.end method

.method public getPicker()Lcom/bytedance/applog/IPicker;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->g:Lcom/bytedance/applog/IPicker;

    return-object v0
.end method

.method public getProcess()I
    .registers 2

    .prologue
    .line 200
    iget v0, p0, Lcom/bytedance/applog/InitConfig;->i:I

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseBuild()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getTweakedChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateVersionCode()I
    .registers 2

    .prologue
    .line 320
    iget v0, p0, Lcom/bytedance/applog/InitConfig;->o:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 290
    iget v0, p0, Lcom/bytedance/applog/InitConfig;->n:I

    return v0
.end method

.method public getVersionMinor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getZiJieCloudPkg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->w:Ljava/lang/String;

    return-object v0
.end method

.method public isPlayEnable()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->h:Z

    return v0
.end method

.method public setAbClient(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "abClient"    # Ljava/lang/String;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->r:Ljava/lang/String;

    .line 362
    return-object p0
.end method

.method public setAbFeature(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "abFeature"    # Ljava/lang/String;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->u:Ljava/lang/String;

    .line 411
    return-object p0
.end method

.method public setAbGroup(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "abGroup"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->t:Ljava/lang/String;

    .line 396
    return-object p0
.end method

.method public setAbVersion(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "abVersion"    # Ljava/lang/String;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->s:Ljava/lang/String;

    .line 381
    return-object p0
.end method

.method public setAliyunUdid(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "aliyunUdid"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->f:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->k:Ljava/lang/String;

    .line 242
    return-object p0
.end method

.method public setEnablePlay(Z)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "enable"    # Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->h:Z

    .line 77
    return-object p0
.end method

.method public setGoogleAid(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "gaid"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 101
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->c:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "language"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 124
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->d:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public setManifestVersion(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "manifestVersion"    # Ljava/lang/String;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->q:Ljava/lang/String;

    .line 347
    return-object p0
.end method

.method public setManifestVersionCode(I)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "manifestVersionCode"    # I

    .prologue
    .line 330
    iput p1, p0, Lcom/bytedance/applog/InitConfig;->p:I

    .line 331
    return-object p0
.end method

.method public setPicker(Lcom/bytedance/applog/IPicker;)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "picker"    # Lcom/bytedance/applog/IPicker;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 221
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->g:Lcom/bytedance/applog/IPicker;

    .line 222
    return-object p0
.end method

.method public setProcess(Z)Lcom/bytedance/applog/InitConfig;
    .registers 3
    .param p1, "main"    # Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 189
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Lcom/bytedance/applog/InitConfig;->i:I

    .line 190
    return-object p0

    .line 189
    :cond_6
    const/4 v0, 0x2

    goto :goto_3
.end method

.method public setRegion(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "region"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 147
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->e:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public setReleaseBuild(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "releaseBuild"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->j:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public setTweakedChannel(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "tweakedChannel"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->m:Ljava/lang/String;

    .line 271
    return-object p0
.end method

.method public setUpdateVersionCode(I)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "updateVersionCode"    # I

    .prologue
    .line 315
    iput p1, p0, Lcom/bytedance/applog/InitConfig;->o:I

    .line 316
    return-object p0
.end method

.method public setUriConfig(I)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "region"    # I

    .prologue
    .line 231
    invoke-static {p1}, Lcom/bytedance/applog/c/a;->a(I)V

    .line 232
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->l:Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public setVersionCode(I)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "versionCode"    # I

    .prologue
    .line 285
    iput p1, p0, Lcom/bytedance/applog/InitConfig;->n:I

    .line 286
    return-object p0
.end method

.method public setVersionMinor(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "versionMinor"    # Ljava/lang/String;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->v:Ljava/lang/String;

    .line 425
    return-object p0
.end method

.method public setZiJieCloudPkg(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .registers 2
    .param p1, "ziJieCloudPkg"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->w:Ljava/lang/String;

    .line 438
    return-object p0
.end method
