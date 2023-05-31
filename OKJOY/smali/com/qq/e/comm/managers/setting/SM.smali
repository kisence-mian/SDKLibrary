.class public Lcom/qq/e/comm/managers/setting/SM;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/qq/e/comm/managers/setting/c;

.field private b:Ljava/lang/String;

.field private c:Lcom/qq/e/comm/managers/setting/c;

.field private d:Lcom/qq/e/comm/managers/setting/c;

.field private e:Ljava/lang/String;

.field private f:Lcom/qq/e/comm/managers/setting/b;

.field private g:Lcom/qq/e/comm/managers/setting/b;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Context;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/qq/e/comm/managers/setting/SM;->j:Landroid/content/Context;

    new-instance v0, Lcom/qq/e/comm/managers/setting/c;

    invoke-direct {v0}, Lcom/qq/e/comm/managers/setting/c;-><init>()V

    iput-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->a:Lcom/qq/e/comm/managers/setting/c;

    new-instance v0, Lcom/qq/e/comm/managers/setting/c;

    invoke-direct {v0}, Lcom/qq/e/comm/managers/setting/c;-><init>()V

    iput-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->d:Lcom/qq/e/comm/managers/setting/c;

    new-instance v0, Lcom/qq/e/comm/managers/setting/a;

    invoke-direct {v0}, Lcom/qq/e/comm/managers/setting/a;-><init>()V

    iput-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->g:Lcom/qq/e/comm/managers/setting/b;

    const-string v0, "e_qq_com_setting"

    invoke-static {v0}, Lcom/qq/e/comm/util/SystemUtil;->buildNewPathByProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->k:Ljava/lang/String;

    :try_start_26
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qq/e/comm/managers/setting/SM;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/qq/e/comm/managers/setting/SM;->k:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "gdt_suid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->readAll(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->h:Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_3c} :catch_43

    :goto_3c
    invoke-direct {p0}, Lcom/qq/e/comm/managers/setting/SM;->a()V

    invoke-direct {p0}, Lcom/qq/e/comm/managers/setting/SM;->b()V

    return-void

    :catch_43
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->h:Ljava/lang/String;

    const-string v0, "IO Exception while loading suid"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/e/comm/managers/setting/c;->b(Landroid/content/Context;)Lcom/qq/e/comm/managers/setting/c$b;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/setting/c$b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/comm/managers/setting/SM;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/setting/c$b;->b()Lcom/qq/e/comm/managers/setting/b;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->f:Lcom/qq/e/comm/managers/setting/b;

    :goto_14
    return-void

    :cond_15
    const-string v0, "Load Local SDK Cloud setting fail"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    goto :goto_14
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/e/comm/managers/setting/c;->a(Landroid/content/Context;)Lcom/qq/e/comm/managers/setting/c$a;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/setting/c$a;->b()Lcom/qq/e/comm/managers/setting/c;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/comm/managers/setting/SM;->c:Lcom/qq/e/comm/managers/setting/c;

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/setting/c$a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->b:Ljava/lang/String;

    :goto_14
    return-void

    :cond_15
    const-string v0, "Load Local DEV Cloud setting fail"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    goto :goto_14
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/qq/e/comm/managers/setting/SM;->a:Lcom/qq/e/comm/managers/setting/c;

    invoke-virtual {v1, p1}, Lcom/qq/e/comm/managers/setting/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/qq/e/comm/managers/setting/SM;->a:Lcom/qq/e/comm/managers/setting/c;

    invoke-virtual {v1, p1}, Lcom/qq/e/comm/managers/setting/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    move-object v0, v1

    goto :goto_7

    :cond_1a
    iget-object v1, p0, Lcom/qq/e/comm/managers/setting/SM;->c:Lcom/qq/e/comm/managers/setting/c;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/qq/e/comm/managers/setting/SM;->c:Lcom/qq/e/comm/managers/setting/c;

    invoke-virtual {v1, p1}, Lcom/qq/e/comm/managers/setting/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_28

    move-object v0, v1

    goto :goto_7

    :cond_28
    iget-object v1, p0, Lcom/qq/e/comm/managers/setting/SM;->d:Lcom/qq/e/comm/managers/setting/c;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/qq/e/comm/managers/setting/SM;->d:Lcom/qq/e/comm/managers/setting/c;

    invoke-virtual {v1, p1}, Lcom/qq/e/comm/managers/setting/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_36

    move-object v0, v1

    goto :goto_7

    :cond_36
    iget-object v1, p0, Lcom/qq/e/comm/managers/setting/SM;->f:Lcom/qq/e/comm/managers/setting/b;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/qq/e/comm/managers/setting/SM;->f:Lcom/qq/e/comm/managers/setting/b;

    invoke-virtual {v1, p1}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_44

    move-object v0, v1

    goto :goto_7

    :cond_44
    iget-object v1, p0, Lcom/qq/e/comm/managers/setting/SM;->g:Lcom/qq/e/comm/managers/setting/b;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/qq/e/comm/managers/setting/SM;->g:Lcom/qq/e/comm/managers/setting/b;

    invoke-virtual {v1, p1}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_4d} :catch_4f

    move-result-object v0

    goto :goto_7

    :catch_4f
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in settingManager.get Setting for key:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public getCloudSetting()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevCloudSettingSig()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getForPlacement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "placement"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move-object v0, v1

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->a:Lcom/qq/e/comm/managers/setting/c;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->a:Lcom/qq/e/comm/managers/setting/c;

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/comm/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_1b
    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->c:Lcom/qq/e/comm/managers/setting/c;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->c:Lcom/qq/e/comm/managers/setting/c;

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/comm/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_27
    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->d:Lcom/qq/e/comm/managers/setting/c;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->d:Lcom/qq/e/comm/managers/setting/c;

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/comm/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_33
    invoke-virtual {p0, p1}, Lcom/qq/e/comm/managers/setting/SM;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_36} :catch_38

    move-result-object v0

    goto :goto_e

    :catch_38
    move-exception v0

    const-string v2, "Exception in settingManager.getForPlacement"

    invoke-static {v2, v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_e
.end method

.method public getInteger(Ljava/lang/String;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/qq/e/comm/managers/setting/SM;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_10

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2    # "defaultValue":I
    :cond_10
    return p2
.end method

.method public getIntegerForPlacement(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "placement"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/qq/e/comm/managers/setting/SM;->getForPlacement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_10

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .end local p3    # "defaultValue":I
    :cond_10
    return p3
.end method

.method public getSdkCloudSettingSig()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingDir()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/qq/e/comm/managers/setting/SM;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public getStringForPlacement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "placement"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/qq/e/comm/managers/setting/SM;->getForPlacement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public getSuid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setDEVCodeSetting(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->d:Lcom/qq/e/comm/managers/setting/c;

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/comm/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDEVCodeSetting(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "placement"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->d:Lcom/qq/e/comm/managers/setting/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qq/e/comm/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateContextSetting(Ljava/lang/String;)V
    .registers 6
    .param p1, "settingStr"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v0, Lcom/qq/e/comm/managers/setting/c;

    invoke-direct {v0}, Lcom/qq/e/comm/managers/setting/c;-><init>()V

    invoke-static {p1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    new-instance v0, Lcom/qq/e/comm/managers/setting/c;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/qq/e/comm/managers/setting/c;-><init>(Ljava/lang/String;)V

    :cond_1c
    iput-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->a:Lcom/qq/e/comm/managers/setting/c;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    const-string v1, "Exception while update Context Setting"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public updateDEVCloudSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "sig"    # Ljava/lang/String;
    .param p2, "base64SettingStr"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->j:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/qq/e/comm/managers/setting/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/qq/e/comm/managers/setting/SM;->b()V

    :cond_b
    return-void
.end method

.method public updateSDKCloudSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "sig"    # Ljava/lang/String;
    .param p2, "base64SettingStr"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->j:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/qq/e/comm/managers/setting/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/qq/e/comm/managers/setting/SM;->a()V

    :cond_b
    return-void
.end method

.method public updateSID(Ljava/lang/String;)V
    .registers 2
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/qq/e/comm/managers/setting/SM;->i:Ljava/lang/String;

    return-void
.end method

.method public updateSUID(Ljava/lang/String;)V
    .registers 6
    .param p1, "suid"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/SM;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iput-object p1, p0, Lcom/qq/e/comm/managers/setting/SM;->h:Ljava/lang/String;

    :try_start_10
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qq/e/comm/managers/setting/SM;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/qq/e/comm/managers/setting/SM;->k:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "gdt_suid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/qq/e/comm/util/StringUtil;->writeTo(Ljava/lang/String;Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_23} :catch_24

    :cond_23
    :goto_23
    return-void

    :catch_24
    move-exception v0

    const-string v1, "Exception while persit suid"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method
