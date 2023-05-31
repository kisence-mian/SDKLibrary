.class Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a:Z

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Landroid/content/Context;)V

    return-void
.end method

.method private native ChmodInner(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private a(Landroid/content/Context;)V
    .registers 7

    const-class v2, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;

    monitor-enter v2

    :try_start_3
    const-string v0, "TbsLinuxToolsJni"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "TbsLinuxToolsJni init mbIsInited is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->b:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->b:Z

    if-eqz v0, :cond_1f

    monitor-exit v2

    :goto_1e
    return-void

    :cond_1f
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->b:Z
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_b7

    :try_start_22
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f2

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_33
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_38
    if-eqz v0, :cond_ad

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "liblinuxtoolsfortbssdk_jni.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_70

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_70

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/am;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    :cond_70
    if-eqz v0, :cond_ad

    const-string v1, "TbsLinuxToolsJni"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsLinuxToolsJni init tbsSharePath is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "liblinuxtoolsfortbssdk_jni.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a:Z

    :cond_ad
    const-string v0, "/checkChmodeExists"

    const-string v1, "700"

    invoke-direct {p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->ChmodInner(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_b4} :catch_c4
    .catchall {:try_start_22 .. :try_end_b4} :catchall_b7

    :goto_b4
    :try_start_b4
    monitor-exit v2

    goto/16 :goto_1e

    :catchall_b7
    move-exception v0

    monitor-exit v2
    :try_end_b9
    .catchall {:try_start_b4 .. :try_end_b9} :catchall_b7

    throw v0

    :cond_ba
    :try_start_ba
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_c1} :catch_c4
    .catchall {:try_start_ba .. :try_end_c1} :catchall_b7

    move-result-object v0

    goto/16 :goto_38

    :catch_c4
    move-exception v0

    :try_start_c5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a:Z

    const-string v1, "TbsLinuxToolsJni"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TbsLinuxToolsJni init error !!! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ## "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f1
    .catchall {:try_start_c5 .. :try_end_f1} :catchall_b7

    goto :goto_b4

    :cond_f2
    move-object v1, v0

    goto/16 :goto_33
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a:Z

    if-nez v0, :cond_e

    const-string v0, "TbsLinuxToolsJni"

    const-string v1, "jni not loaded!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, -0x1

    :goto_d
    return v0

    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->ChmodInner(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_d
.end method
