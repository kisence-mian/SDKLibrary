.class public Lcom/tds/common/localize/LocalizeManager;
.super Ljava/lang/Object;
.source "LocalizeManager.java"


# static fields
.field private static gameSelectedLang:I

.field private static isDomestic:Z

.field private static final localizeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tds/common/localize/LocalizeStore;",
            ">;"
        }
    .end annotation
.end field

.field private static final preferredLanguageChangedActionPublishSubject:Lcom/tds/common/reactor/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/subjects/PublishSubject<",
            "Lcom/tds/common/localize/model/PreferredLanguageChangedAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final supportedLangMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final supportedLangSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final supportedLangStringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final supportedLangTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tds/common/localize/LocalizeManager;->localizeCache:Ljava/util/Map;

    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/tds/common/localize/LocalizeManager;->gameSelectedLang:I

    .line 27
    invoke-static {}, Lcom/tds/common/reactor/subjects/PublishSubject;->create()Lcom/tds/common/reactor/subjects/PublishSubject;

    move-result-object v1

    sput-object v1, Lcom/tds/common/localize/LocalizeManager;->preferredLanguageChangedActionPublishSubject:Lcom/tds/common/reactor/subjects/PublishSubject;

    .line 29
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/tds/common/localize/LocalizeManager;->supportedLangSet:Ljava/util/Set;

    .line 30
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/tds/common/localize/LocalizeManager;->supportedLangTypeSet:Ljava/util/Set;

    .line 31
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/tds/common/localize/LocalizeManager;->supportedLangMap:Ljava/util/Map;

    .line 32
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/tds/common/localize/LocalizeManager;->supportedLangStringMap:Ljava/util/Map;

    .line 35
    const-string v5, "zh_hans"

    const-string v6, "zh_hant"

    const-string v7, "en"

    const-string v8, "ja"

    const-string v9, "ko"

    const-string v10, "th"

    const-string v11, "id"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 36
    const/4 v1, 0x7

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 36
    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v0

    .line 37
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v6

    .line 38
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v0

    .line 39
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v9

    .line 40
    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v0

    .line 41
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v1, v9

    .line 42
    aput-object v5, v1, v0

    .line 36
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 44
    const-string v0, "zh_hans"

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "en"

    invoke-interface {v3, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "zh_hant"

    invoke-interface {v3, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "ja"

    invoke-interface {v3, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "ko"

    invoke-interface {v3, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "th"

    invoke-interface {v3, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "id"

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "zh_CN"

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "en_US"

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "zh_TW"

    invoke-interface {v4, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "ja_JP"

    invoke-interface {v4, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "ko_KR"

    invoke-interface {v4, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "th_TH"

    invoke-interface {v4, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "id_ID"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sput-boolean v6, Lcom/tds/common/localize/LocalizeManager;->isDomestic:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeGameSelectedLanguage(I)V
    .registers 3
    .param p0, "lang"    # I

    .line 72
    sput p0, Lcom/tds/common/localize/LocalizeManager;->gameSelectedLang:I

    .line 73
    sget-object v0, Lcom/tds/common/localize/LocalizeManager;->preferredLanguageChangedActionPublishSubject:Lcom/tds/common/reactor/subjects/PublishSubject;

    new-instance v1, Lcom/tds/common/localize/model/PreferredLanguageChangedAction;

    invoke-direct {v1, p0}, Lcom/tds/common/localize/model/PreferredLanguageChangedAction;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public static configSDKLocalize(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetsFileName"    # Ljava/lang/String;
    .param p3, "domestic"    # Z

    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "dict":Lorg/json/JSONObject;
    :try_start_1
    invoke-static {p1, p2}, Lcom/tds/common/utils/FileUtils;->loadAssetTextAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "dictStr":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-object v0, v2

    .line 97
    .end local v1    # "dictStr":Ljava/lang/String;
    goto :goto_10

    .line 95
    :catch_c
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_10
    invoke-static {p0, v0, p3}, Lcom/tds/common/localize/LocalizeManager;->configSDKLocalize(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 99
    return-void
.end method

.method public static configSDKLocalize(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dict"    # Lorg/json/JSONObject;
    .param p2, "domestic"    # Z

    .line 84
    if-nez p1, :cond_3

    return-void

    .line 85
    :cond_3
    new-instance v0, Lcom/tds/common/localize/LocalizeStore;

    invoke-direct {v0, p1, p2}, Lcom/tds/common/localize/LocalizeStore;-><init>(Lorg/json/JSONObject;Z)V

    .line 86
    .local v0, "store":Lcom/tds/common/localize/LocalizeStore;
    sget-object v1, Lcom/tds/common/localize/LocalizeManager;->localizeCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sput-boolean p2, Lcom/tds/common/localize/LocalizeManager;->isDomestic:Z

    .line 88
    return-void
.end method

.method public static getDefaultLocaleByDomestic()Ljava/util/Locale;
    .registers 1

    .line 148
    sget-boolean v0, Lcom/tds/common/localize/LocalizeManager;->isDomestic:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    goto :goto_9

    :cond_7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_9
    return-object v0
.end method

.method public static getLanguageChangedObservable()Lcom/tds/common/reactor/subjects/PublishSubject;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/subjects/PublishSubject<",
            "Lcom/tds/common/localize/model/PreferredLanguageChangedAction;",
            ">;"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/tds/common/localize/LocalizeManager;->preferredLanguageChangedActionPublishSubject:Lcom/tds/common/reactor/subjects/PublishSubject;

    return-object v0
.end method

.method public static getLocale(I)Ljava/util/Locale;
    .registers 3
    .param p0, "languageType"    # I

    .line 127
    packed-switch p0, :pswitch_data_28

    .line 144
    invoke-static {}, Lcom/tds/common/localize/LocalizeManager;->getDefaultLocaleByDomestic()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 141
    :pswitch_8
    new-instance v0, Ljava/util/Locale;

    const-string v1, "in"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 139
    :pswitch_10
    new-instance v0, Ljava/util/Locale;

    const-string v1, "th"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 137
    :pswitch_18
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    return-object v0

    .line 135
    :pswitch_1b
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    return-object v0

    .line 133
    :pswitch_1e
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    return-object v0

    .line 131
    :pswitch_21
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    return-object v0

    .line 129
    :pswitch_24
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_10
        :pswitch_8
    .end packed-switch
.end method

.method public static getLocalizeStore(Ljava/lang/String;)Lcom/tds/common/localize/LocalizeStore;
    .registers 5
    .param p0, "sdkName"    # Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/tds/common/localize/LocalizeManager;->localizeCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/localize/LocalizeStore;

    .line 78
    .local v0, "store":Lcom/tds/common/localize/LocalizeStore;
    if-eqz v0, :cond_12

    .line 79
    invoke-static {}, Lcom/tds/common/localize/LocalizeManager;->getPreferredLang()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tds/common/localize/LocalizeStore;->setPreferredLang(I)V

    .line 80
    return-object v0

    .line 78
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "please config localizestore("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") first"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getPreferredLang()I
    .registers 4

    .line 102
    sget v0, Lcom/tds/common/localize/LocalizeManager;->gameSelectedLang:I

    if-eqz v0, :cond_5

    return v0

    .line 104
    :cond_5
    invoke-static {}, Lcom/tds/common/utils/DeviceUtils;->getCurLanguageDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "curLanguageDisplayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v1, :cond_61

    .line 106
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 108
    const/4 v1, 0x3

    return v1

    .line 110
    :cond_27
    return v2

    .line 111
    :cond_28
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 112
    return v3

    .line 113
    :cond_31
    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 114
    const/4 v1, 0x4

    return v1

    .line 115
    :cond_3b
    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 116
    const/4 v1, 0x5

    return v1

    .line 117
    :cond_45
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 118
    const/4 v1, 0x6

    return v1

    .line 119
    :cond_4f
    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 120
    :cond_5f
    const/4 v1, 0x7

    return v1

    .line 123
    :cond_61
    sget-boolean v1, Lcom/tds/common/localize/LocalizeManager;->isDomestic:Z

    if-eqz v1, :cond_66

    goto :goto_67

    :cond_66
    move v2, v3

    :goto_67
    return v2
.end method

.method public static getPreferredLanguageString()Ljava/lang/String;
    .registers 5

    .line 152
    sget v0, Lcom/tds/common/localize/LocalizeManager;->gameSelectedLang:I

    .line 153
    .local v0, "selectLang":I
    sget v1, Lcom/tds/common/localize/LocalizeManager;->gameSelectedLang:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v1, :cond_10

    .line 154
    sget-boolean v1, Lcom/tds/common/localize/LocalizeManager;->isDomestic:Z

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    move v0, v1

    .line 156
    :cond_10
    sget-object v1, Lcom/tds/common/localize/LocalizeManager;->supportedLangTypeSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 157
    sget-object v1, Lcom/tds/common/localize/LocalizeManager;->supportedLangStringMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 159
    :cond_29
    sget-boolean v1, Lcom/tds/common/localize/LocalizeManager;->isDomestic:Z

    if-eqz v1, :cond_3a

    sget-object v1, Lcom/tds/common/localize/LocalizeManager;->supportedLangStringMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_46

    :cond_3a
    sget-object v1, Lcom/tds/common/localize/LocalizeManager;->supportedLangStringMap:Ljava/util/Map;

    .line 160
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    :goto_46
    return-object v1
.end method

.method public static isLangSupport(Ljava/lang/String;)Z
    .registers 2
    .param p0, "lang"    # Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/tds/common/localize/LocalizeManager;->supportedLangSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
