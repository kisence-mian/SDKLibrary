.class public Lcom/bytedance/embedapplog/InitConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/bytedance/embedapplog/IPicker;

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

.field private x:Z

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/embedapplog/InitConfig;->i:I

    .line 45
    iput-boolean v1, p0, Lcom/bytedance/embedapplog/InitConfig;->x:Z

    .line 46
    iput-boolean v1, p0, Lcom/bytedance/embedapplog/InitConfig;->y:Z

    .line 54
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->a:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/bytedance/embedapplog/InitConfig;->b:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public getAbClient()Ljava/lang/String;
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getAbFeature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getAbGroup()Ljava/lang/String;
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getAbVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAliyunUdid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAppImei()Ljava/lang/String;
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleAid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestVersionCode()I
    .registers 2

    .prologue
    .line 341
    iget v0, p0, Lcom/bytedance/embedapplog/InitConfig;->p:I

    return v0
.end method

.method public getPicker()Lcom/bytedance/embedapplog/IPicker;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->g:Lcom/bytedance/embedapplog/IPicker;

    return-object v0
.end method

.method public getProcess()I
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lcom/bytedance/embedapplog/InitConfig;->i:I

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseBuild()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getTweakedChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateVersionCode()I
    .registers 2

    .prologue
    .line 326
    iget v0, p0, Lcom/bytedance/embedapplog/InitConfig;->o:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 296
    iget v0, p0, Lcom/bytedance/embedapplog/InitConfig;->n:I

    return v0
.end method

.method public getVersionMinor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getZiJieCloudPkg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->w:Ljava/lang/String;

    return-object v0
.end method

.method public isImeiEnable()Z
    .registers 2

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/InitConfig;->y:Z

    return v0
.end method

.method public isMacEnable()Z
    .registers 2

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/InitConfig;->x:Z

    return v0
.end method

.method public isPlayEnable()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/InitConfig;->h:Z

    return v0
.end method

.method public setAbClient(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .prologue
    .line 367
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->r:Ljava/lang/String;

    .line 368
    return-object p0
.end method

.method public setAbFeature(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .prologue
    .line 416
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->u:Ljava/lang/String;

    .line 417
    return-object p0
.end method

.method public setAbGroup(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .prologue
    .line 401
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->t:Ljava/lang/String;

    .line 402
    return-object p0
.end method

.method public setAbVersion(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .prologue
    .line 386
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->s:Ljava/lang/String;

    .line 387
    return-object p0
.end method

.method public setAliyunUdid(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .prologue
    .line 173
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->f:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setAppImei(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 472
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->z:Ljava/lang/String;

    .line 473
    return-void
.end method

.method public setAppName(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->k:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public setEnablePlay(Z)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/bytedance/embedapplog/InitConfig;->h:Z

    .line 83
    return-object p0
.end method

.method public setGoogleAid(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->c:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public setImeiEnable(Z)V
    .registers 2

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/bytedance/embedapplog/InitConfig;->y:Z

    .line 465
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 130
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->d:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public setMacEnable(Z)V
    .registers 2

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/bytedance/embedapplog/InitConfig;->x:Z

    .line 457
    return-void
.end method

.method public setManifestVersion(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .prologue
    .line 352
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->q:Ljava/lang/String;

    .line 353
    return-object p0
.end method

.method public setManifestVersionCode(I)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .prologue
    .line 336
    iput p1, p0, Lcom/bytedance/embedapplog/InitConfig;->p:I

    .line 337
    return-object p0
.end method

.method public setPicker(Lcom/bytedance/embedapplog/IPicker;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 227
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->g:Lcom/bytedance/embedapplog/IPicker;

    .line 228
    return-object p0
.end method

.method public setProcess(Z)Lcom/bytedance/embedapplog/InitConfig;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 195
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Lcom/bytedance/embedapplog/InitConfig;->i:I

    .line 196
    return-object p0

    .line 195
    :cond_6
    const/4 v0, 0x2

    goto :goto_3
.end method

.method public setRegion(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 153
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->e:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public setReleaseBuild(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->j:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method public setTweakedChannel(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .prologue
    .line 276
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->m:Ljava/lang/String;

    .line 277
    return-object p0
.end method

.method public setUpdateVersionCode(I)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .prologue
    .line 321
    iput p1, p0, Lcom/bytedance/embedapplog/InitConfig;->o:I

    .line 322
    return-object p0
.end method

.method public setUriConfig(I)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .prologue
    .line 237
    invoke-static {p1}, Lcom/bytedance/embedapplog/c/a;->a(I)V

    .line 238
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .prologue
    .line 261
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->l:Ljava/lang/String;

    .line 262
    return-object p0
.end method

.method public setVersionCode(I)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .prologue
    .line 291
    iput p1, p0, Lcom/bytedance/embedapplog/InitConfig;->n:I

    .line 292
    return-object p0
.end method

.method public setVersionMinor(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .prologue
    .line 430
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->v:Ljava/lang/String;

    .line 431
    return-object p0
.end method

.method public setZiJieCloudPkg(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .prologue
    .line 443
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->w:Ljava/lang/String;

    .line 444
    return-object p0
.end method
