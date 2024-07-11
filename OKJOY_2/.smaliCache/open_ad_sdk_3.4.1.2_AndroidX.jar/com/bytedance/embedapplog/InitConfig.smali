.class public Lcom/bytedance/embedapplog/InitConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Lcom/bytedance/embedapplog/ISensitiveInfoProvider;

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
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/embedapplog/InitConfig;->i:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/InitConfig;->x:Z

    .line 46
    iput-boolean v0, p0, Lcom/bytedance/embedapplog/InitConfig;->y:Z

    .line 56
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->a:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/bytedance/embedapplog/InitConfig;->b:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public getAbClient()Ljava/lang/String;
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getAbFeature()Ljava/lang/String;
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getAbGroup()Ljava/lang/String;
    .registers 2

    .line 408
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getAbVersion()Ljava/lang/String;
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAliyunUdid()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAppImei()Ljava/lang/String;
    .registers 2

    .line 470
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleAid()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestVersion()Ljava/lang/String;
    .registers 2

    .line 359
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestVersionCode()I
    .registers 2

    .line 343
    iget v0, p0, Lcom/bytedance/embedapplog/InitConfig;->p:I

    return v0
.end method

.method public getPicker()Lcom/bytedance/embedapplog/IPicker;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->g:Lcom/bytedance/embedapplog/IPicker;

    return-object v0
.end method

.method public getProcess()I
    .registers 2

    .line 208
    iget v0, p0, Lcom/bytedance/embedapplog/InitConfig;->i:I

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseBuild()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSensitiveInfoProvider()Lcom/bytedance/embedapplog/ISensitiveInfoProvider;
    .registers 2

    .line 478
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->A:Lcom/bytedance/embedapplog/ISensitiveInfoProvider;

    return-object v0
.end method

.method public getTweakedChannel()Ljava/lang/String;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateVersionCode()I
    .registers 2

    .line 328
    iget v0, p0, Lcom/bytedance/embedapplog/InitConfig;->o:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    .line 298
    iget v0, p0, Lcom/bytedance/embedapplog/InitConfig;->n:I

    return v0
.end method

.method public getVersionMinor()Ljava/lang/String;
    .registers 2

    .line 437
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getZiJieCloudPkg()Ljava/lang/String;
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->w:Ljava/lang/String;

    return-object v0
.end method

.method public isImeiEnable()Z
    .registers 2

    .line 462
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/InitConfig;->y:Z

    return v0
.end method

.method public isMacEnable()Z
    .registers 2

    .line 454
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/InitConfig;->x:Z

    return v0
.end method

.method public isPlayEnable()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/InitConfig;->h:Z

    return v0
.end method

.method public setAbClient(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 369
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->r:Ljava/lang/String;

    .line 370
    return-object p0
.end method

.method public setAbFeature(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 418
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->u:Ljava/lang/String;

    .line 419
    return-object p0
.end method

.method public setAbGroup(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 403
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->t:Ljava/lang/String;

    .line 404
    return-object p0
.end method

.method public setAbVersion(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 388
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->s:Ljava/lang/String;

    .line 389
    return-object p0
.end method

.method public setAliyunUdid(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->f:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public setAppImei(Ljava/lang/String;)V
    .registers 2

    .line 474
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->z:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public setAppName(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->k:Ljava/lang/String;

    .line 250
    return-object p0
.end method

.method public setEnablePlay(Z)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/bytedance/embedapplog/InitConfig;->h:Z

    .line 85
    return-object p0
.end method

.method public setGoogleAid(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->c:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public setImeiEnable(Z)V
    .registers 2

    .line 466
    iput-boolean p1, p0, Lcom/bytedance/embedapplog/InitConfig;->y:Z

    .line 467
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->d:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public setMacEnable(Z)V
    .registers 2

    .line 458
    iput-boolean p1, p0, Lcom/bytedance/embedapplog/InitConfig;->x:Z

    .line 459
    return-void
.end method

.method public setManifestVersion(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 354
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->q:Ljava/lang/String;

    .line 355
    return-object p0
.end method

.method public setManifestVersionCode(I)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 338
    iput p1, p0, Lcom/bytedance/embedapplog/InitConfig;->p:I

    .line 339
    return-object p0
.end method

.method public setPicker(Lcom/bytedance/embedapplog/IPicker;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->g:Lcom/bytedance/embedapplog/IPicker;

    .line 230
    return-object p0
.end method

.method public setProcess(Z)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 197
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x2

    :goto_5
    iput p1, p0, Lcom/bytedance/embedapplog/InitConfig;->i:I

    .line 198
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->e:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public setReleaseBuild(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->j:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setSensitiveInfoProvider(Lcom/bytedance/embedapplog/ISensitiveInfoProvider;)V
    .registers 2

    .line 482
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->A:Lcom/bytedance/embedapplog/ISensitiveInfoProvider;

    .line 483
    return-void
.end method

.method public setTweakedChannel(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->m:Ljava/lang/String;

    .line 279
    return-object p0
.end method

.method public setUpdateVersionCode(I)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 323
    iput p1, p0, Lcom/bytedance/embedapplog/InitConfig;->o:I

    .line 324
    return-object p0
.end method

.method public setUriConfig(I)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 239
    invoke-static {p1}, Lcom/bytedance/embedapplog/ao;->a(I)V

    .line 240
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->l:Ljava/lang/String;

    .line 264
    return-object p0
.end method

.method public setVersionCode(I)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 293
    iput p1, p0, Lcom/bytedance/embedapplog/InitConfig;->n:I

    .line 294
    return-object p0
.end method

.method public setVersionMinor(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 432
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->v:Ljava/lang/String;

    .line 433
    return-object p0
.end method

.method public setZiJieCloudPkg(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .registers 2

    .line 445
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->w:Ljava/lang/String;

    .line 446
    return-object p0
.end method
