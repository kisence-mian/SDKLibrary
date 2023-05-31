.class public Lcom/bytedance/sdk/openadsdk/utils/o;
.super Ljava/lang/Object;
.source "InitChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/o$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 217
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 218
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 219
    if-eqz v0, :cond_2a

    .line 221
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 222
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_16

    .line 223
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_28} :catch_29

    .line 229
    :goto_28
    return-object v0

    .line 227
    :catch_29
    move-exception v0

    .line 229
    :cond_2a
    const-string v0, "unknown"

    goto :goto_28
.end method

.method private static a(Landroid/content/Context;I)Ljava/util/List;
    .registers 12
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/utils/o$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 279
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 281
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 282
    :goto_12
    const/4 v1, 0x1

    if-eq v0, v1, :cond_69

    .line 283
    packed-switch v0, :pswitch_data_6c

    .line 306
    :cond_18
    :goto_18
    :pswitch_18
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_12

    .line 287
    :pswitch_1d
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 290
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v7

    .line 291
    const/4 v0, 0x0

    move v4, v0

    move-object v1, v3

    move-object v0, v3

    :goto_29
    if-ge v4, v7, :cond_4b

    .line 292
    invoke-interface {v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 293
    const-string v9, "name"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 294
    invoke-interface {v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    :cond_3b
    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 295
    :cond_3e
    const-string v9, "path"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 296
    invoke-interface {v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 299
    :cond_4b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 300
    new-instance v4, Lcom/bytedance/sdk/openadsdk/utils/o$a;

    invoke-direct {v4, v6, v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_65} :catch_66

    goto :goto_18

    .line 309
    :catch_66
    move-exception v0

    move-object v0, v3

    .line 311
    :goto_68
    return-object v0

    :cond_69
    move-object v0, v2

    .line 308
    goto :goto_68

    .line 283
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
        :pswitch_1d
    .end packed-switch
.end method

.method public static a()V
    .registers 16

    .prologue
    const/4 v4, 0x1

    const/16 v15, 0x18

    const/16 v14, 0x17

    const/4 v2, 0x0

    .line 30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v5

    .line 31
    if-nez v5, :cond_d

    .line 210
    :cond_c
    :goto_c
    return-void

    .line 36
    :cond_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 40
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "TTAdSdk-InitChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==\u5f53\u524d\u8fdb\u7a0b\u540d\uff1a"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "TTAdSdk-InitChecker"

    const-string v1, "==\u7a7f\u5c71\u7532sdk\u63a5\u5165\uff0c\u73af\u5883\u4e3adebug\uff0c\u521d\u59cb\u5316\u914d\u7f6e\u68c0\u6d4b\u5f00\u59cb=="

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 48
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 50
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/high16 v3, 0x20000

    invoke-virtual {v8, v0, v1, v3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    move v3, v2

    :goto_5c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    .line 55
    const-string v10, "com.bytedance.sdk.openadsdk.multipro.TTMultiProvider"

    iget-object v11, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a7

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ".TTMultiProvider"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_93

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 60
    :cond_93
    const-string v0, "TTAdSdk-InitChecker"

    const-string v3, "AndroidManifest.xml\u4e2dTTMultiProvider\u914d\u7f6e\u5f02\u5e38\uff1aandroid:authorities\uff0c\u8bf7\u53c2\u8003\u63a5\u5165\u6587\u6863"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9a
    move v0, v1

    move v1, v4

    :goto_9c
    move v3, v1

    move v1, v0

    .line 133
    goto :goto_5c

    .line 62
    :cond_9f
    const-string v0, "TTAdSdk-InitChecker"

    const-string v3, "AndroidManifest.xml\u4e2dTTMultiProvider\u914d\u7f6e\u6b63\u5e38"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a

    .line 64
    :cond_a7
    iget-object v10, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".TTFileProvider"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_319

    .line 86
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v15, :cond_c8

    if-ge v7, v15, :cond_f9

    .line 89
    :cond_c8
    const-string v0, "TTAdSdk-InitChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TTFileProvider\u4e0d\u9700\u8981\u9002\u914d\uff1atarget="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "&phone="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", require="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    move v1, v3

    goto :goto_9c

    .line 91
    :cond_f9
    iget-boolean v1, v0, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v1, :cond_104

    .line 92
    const-string v1, "TTAdSdk-InitChecker"

    const-string v10, "AndroidManifest.xml\u4e2dTTFileProvider\u914d\u7f6e\u5f02\u5e38\uff1aandroid:exported\uff0c\u8bf7\u53c2\u8003\u63a5\u5165\u6587\u6863"

    invoke-static {v1, v10}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_104
    iget-boolean v1, v0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-nez v1, :cond_10f

    .line 95
    const-string v1, "TTAdSdk-InitChecker"

    const-string v10, "AndroidManifest.xml\u4e2dTTFileProvider\u914d\u7f6e\u5f02\u5e38\uff1aandroid:grantUriPermissions\uff0c\u8bf7\u53c2\u8003\u63a5\u5165\u6587\u6863"

    invoke-static {v1, v10}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_10f
    :try_start_10f
    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/16 v0, 0x80

    invoke-virtual {v8, v1, v0}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 101
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "android.support.FILE_PROVIDER_PATHS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 103
    invoke-static {v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/o;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_1da

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1da

    .line 105
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/o;->c()Ljava/util/List;

    move-result-object v1

    .line 106
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/o;->d()Ljava/util/List;

    move-result-object v10

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_148
    :goto_148
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_169

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/utils/o$a;

    .line 108
    if-eqz v0, :cond_148

    .line 109
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    invoke-interface {v10, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_15c
    .catch Ljava/lang/Throwable; {:try_start_10f .. :try_end_15c} :catch_15d

    goto :goto_148

    .line 127
    :catch_15d
    move-exception v0

    .line 128
    const-string v1, "TTAdSdk-InitChecker"

    const-string v10, "AndroidManifest.xml\u4e2dTTFileProvider\u914d\u7f6e\u9519\u8bef\uff0c\u8bf7\u53c2\u8003\u63a5\u5165\u6587\u6863"

    invoke-static {v1, v10, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    move v1, v3

    goto/16 :goto_9c

    .line 113
    :cond_169
    :try_start_169
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_180

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_180

    .line 114
    const-string v0, "TTAdSdk-InitChecker"

    const-string v1, "AndroidManifest.xml\u4e2dTTFileProvider\u914d\u7f6e\u6b63\u5e38"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17c
    :goto_17c
    move v0, v4

    move v1, v3

    .line 129
    goto/16 :goto_9c

    .line 116
    :cond_180
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_184
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ad

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/utils/o$a;

    .line 117
    const-string v11, "TTAdSdk-InitChecker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    TTFileProvider\u7f3a\u5c11\u5fc5\u8981\u8def\u5f84\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/o$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_184

    .line 119
    :cond_1ad
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/utils/o$a;

    .line 120
    const-string v10, "TTAdSdk-InitChecker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    TTFileProvider\u7f3a\u5c11\u53ef\u9009\u8def\u5f84\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/o$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b1

    .line 124
    :cond_1da
    const-string v0, "TTAdSdk-InitChecker"

    const-string v1, "AndroidManifest.xml\u4e2dTTFileProvider\u4e2d\u8def\u5f84\u914d\u7f6e\u5f02\u5e38\uff0c\u8bf7\u53c2\u8003\u63a5\u5165\u6587\u6863"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e1
    .catch Ljava/lang/Throwable; {:try_start_169 .. :try_end_1e1} :catch_15d

    goto :goto_17c

    .line 139
    :cond_1e2
    const/16 v0, 0x1000

    :try_start_1e4
    invoke-virtual {v8, v6, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 140
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 141
    if-eqz v0, :cond_297

    array-length v4, v0

    if-lez v4, :cond_297

    .line 142
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/o;->b()Ljava/util/List;

    move-result-object v4

    .line 143
    array-length v6, v0

    :goto_1f4
    if-ge v2, v6, :cond_200

    aget-object v8, v0, v2

    .line 144
    if-eqz v8, :cond_1fd

    .line 145
    invoke-interface {v4, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 143
    :cond_1fd
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f4

    .line 148
    :cond_200
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25e

    .line 149
    const-string v0, "TTAdSdk-InitChecker"

    const-string v2, "AndroidManifest.xml\u4e2d\u6743\u9650\u914d\u7f6e\u6b63\u5e38"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20d
    .catch Ljava/lang/Throwable; {:try_start_1e4 .. :try_end_20d} :catch_28d

    .line 164
    :cond_20d
    :goto_20d
    :try_start_20d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v14, :cond_213

    if-ge v7, v14, :cond_2a0

    .line 166
    :cond_213
    const-string v0, "TTAdSdk-InitChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u52a8\u6001\u6743\u9650\u4e0d\u9700\u8981\u9002\u914d\uff1atarget="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&phone="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", require="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x17

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_243
    .catch Ljava/lang/Throwable; {:try_start_20d .. :try_end_243} :catch_2ee

    .line 199
    :goto_243
    if-nez v3, :cond_24c

    .line 200
    const-string v0, "TTAdSdk-InitChecker"

    const-string v2, "\u00d7\u00d7\u60a8\u6ca1\u6709\u914d\u7f6eTTMultiProvider\uff0c\u8bf7\u53c2\u8003\u63a5\u5165\u6587\u6863\uff0c\u5426\u5219\u5f71\u54cd\u8f6c\u5316\u00d7\u00d7"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_24c
    if-nez v1, :cond_255

    .line 203
    const-string v0, "TTAdSdk-InitChecker"

    const-string v1, "\u00d7\u00d7\u60a8\u6ca1\u6709\u914d\u7f6eTTFileProvider\uff0c\u8bf7\u53c2\u8003\u63a5\u5165\u6587\u6863\uff0c\u5426\u5219\u5f71\u54cd\u8f6c\u5316\u00d7\u00d7"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_255
    const-string v0, "TTAdSdk-InitChecker"

    const-string v1, "==\u7a7f\u5c71\u7532sdk\u521d\u59cb\u5316\u914d\u7f6e\u68c0\u6d4b\u7ed3\u675f=="

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 151
    :cond_25e
    :try_start_25e
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_262
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    const-string v4, "TTAdSdk-InitChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    \u53ef\u80fd\u7f3a\u5c11\u6743\u9650\uff1a"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\uff0c\u8bf7\u53c2\u8003\u63a5\u5165\u6587\u6863"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28c
    .catch Ljava/lang/Throwable; {:try_start_25e .. :try_end_28c} :catch_28d

    goto :goto_262

    .line 158
    :catch_28d
    move-exception v0

    .line 159
    const-string v2, "TTAdSdk-InitChecker"

    const-string v4, "AndroidManifest.xml\u4e2duses-permission\u914d\u7f6e\u9519\u8bef\uff0c\u8bf7\u53c2\u8003\u63a5\u5165\u6587\u6863"

    invoke-static {v2, v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20d

    .line 156
    :cond_297
    :try_start_297
    const-string v0, "TTAdSdk-InitChecker"

    const-string v2, "AndroidManifest.xml\u4e2duses-permission\u914d\u7f6e\u4e22\u5931\uff0c\u8bf7\u53c2\u8003\u63a5\u5165\u6587\u6863"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29e
    .catch Ljava/lang/Throwable; {:try_start_297 .. :try_end_29e} :catch_28d

    goto/16 :goto_20d

    .line 168
    :cond_2a0
    :try_start_2a0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a()Lcom/bytedance/sdk/openadsdk/core/f/d;

    move-result-object v0

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v5, v2}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 169
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a()Lcom/bytedance/sdk/openadsdk/core/f/d;

    move-result-object v2

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 170
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a()Lcom/bytedance/sdk/openadsdk/core/f/d;

    move-result-object v4

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 171
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a()Lcom/bytedance/sdk/openadsdk/core/f/d;

    move-result-object v6

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v6, v5, v7}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 173
    if-nez v0, :cond_2f8

    .line 174
    const-string v0, "TTAdSdk-InitChecker"

    const-string v6, "\u52a8\u6001\u6743\u9650\u6ca1\u6709\u83b7\u53d6\uff0c\u53ef\u80fd\u5f71\u54cd\u8f6c\u5316\uff1aandroid.permission.READ_PHONE_STATE"

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_2d1
    if-nez v2, :cond_300

    .line 179
    const-string v0, "TTAdSdk-InitChecker"

    const-string v2, "\u52a8\u6001\u6743\u9650\u6ca1\u6709\u83b7\u53d6\uff0c\u53ef\u80fd\u5f71\u54cd\u8f6c\u5316\uff1aandroid.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_2da
    if-nez v4, :cond_308

    .line 185
    const-string v0, "TTAdSdk-InitChecker"

    const-string v2, "\u52a8\u6001\u6743\u9650\u6ca1\u6709\u83b7\u53d6\uff0c\u53ef\u80fd\u5f71\u54cd\u8f6c\u5316\uff1aandroid.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_2e3
    if-nez v5, :cond_310

    .line 190
    const-string v0, "TTAdSdk-InitChecker"

    const-string v2, "\u52a8\u6001\u6743\u9650\u6ca1\u6709\u83b7\u53d6\uff0c\u53ef\u80fd\u5f71\u54cd\u8f6c\u5316\uff1aandroid.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ec
    .catch Ljava/lang/Throwable; {:try_start_2a0 .. :try_end_2ec} :catch_2ee

    goto/16 :goto_243

    .line 195
    :catch_2ee
    move-exception v0

    .line 196
    const-string v2, "TTAdSdk-InitChecker"

    const-string v4, "\u52a8\u6001\u6743\u9650\u83b7\u53d6\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u5e76\u8be6\u7ec6\u9605\u8bfb\u63a5\u5165\u6587\u6863"

    invoke-static {v2, v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_243

    .line 176
    :cond_2f8
    :try_start_2f8
    const-string v0, "TTAdSdk-InitChecker"

    const-string v6, "\u52a8\u6001\u6743\u9650\u6b63\u5e38\uff1aandroid.permission.READ_PHONE_STATE"

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d1

    .line 181
    :cond_300
    const-string v0, "TTAdSdk-InitChecker"

    const-string v2, "\u52a8\u6001\u6743\u9650\u6b63\u5e38\uff1aandroid.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2da

    .line 187
    :cond_308
    const-string v0, "TTAdSdk-InitChecker"

    const-string v2, "\u52a8\u6001\u6743\u9650\u6b63\u5e38\uff1aandroid.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e3

    .line 192
    :cond_310
    const-string v0, "TTAdSdk-InitChecker"

    const-string v2, "\u52a8\u6001\u6743\u9650\u6b63\u5e38\uff1aandroid.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_317
    .catch Ljava/lang/Throwable; {:try_start_2f8 .. :try_end_317} :catch_2ee

    goto/16 :goto_243

    :cond_319
    move v0, v1

    move v1, v3

    goto/16 :goto_9c
.end method

.method private static b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v1, "android.permission.GET_TASKS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v1, "android.permission.WAKE_LOCK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-object v0
.end method

.method private static c()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/utils/o$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/o$a;

    const-string v2, "external-path"

    const-string v3, "tt_external_download"

    const-string v4, "Download"

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/o$a;

    const-string v2, "external-files-path"

    const-string v3, "tt_external_files_download"

    const-string v4, "Download"

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/o$a;

    const-string v2, "files-path"

    const-string v3, "tt_internal_file_download"

    const-string v4, "Download"

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/o$a;

    const-string v2, "cache-path"

    const-string v3, "tt_internal_cache_download"

    const-string v4, "Download"

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    return-object v0
.end method

.method private static d()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/utils/o$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/o$a;

    const-string v2, "external-path"

    const-string v3, "tt_external_root"

    const-string v4, "."

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    return-object v0
.end method
