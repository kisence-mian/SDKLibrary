.class public Lcom/tds/common/net/XUAParams;
.super Ljava/lang/Object;
.source "XUAParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/net/XUAParams$Builder;
    }
.end annotation


# instance fields
.field private final deviceId:Ljava/lang/String;

.field private final lang:Ljava/lang/String;

.field private final osVersion:Ljava/lang/String;

.field private final platform:Ljava/lang/String;

.field private final sdkName:Ljava/lang/String;

.field private final sdkVersionCode:I

.field private final sdkVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tds/common/net/XUAParams$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/tds/common/net/XUAParams$Builder;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    # getter for: Lcom/tds/common/net/XUAParams$Builder;->platform:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/net/XUAParams$Builder;->access$000(Lcom/tds/common/net/XUAParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/XUAParams;->platform:Ljava/lang/String;

    .line 31
    # getter for: Lcom/tds/common/net/XUAParams$Builder;->osVersion:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/net/XUAParams$Builder;->access$100(Lcom/tds/common/net/XUAParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/XUAParams;->osVersion:Ljava/lang/String;

    .line 32
    # getter for: Lcom/tds/common/net/XUAParams$Builder;->sdkName:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/net/XUAParams$Builder;->access$200(Lcom/tds/common/net/XUAParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/XUAParams;->sdkName:Ljava/lang/String;

    .line 33
    # getter for: Lcom/tds/common/net/XUAParams$Builder;->sdkVersionCode:I
    invoke-static {p1}, Lcom/tds/common/net/XUAParams$Builder;->access$300(Lcom/tds/common/net/XUAParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/tds/common/net/XUAParams;->sdkVersionCode:I

    .line 34
    # getter for: Lcom/tds/common/net/XUAParams$Builder;->sdkVersionName:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/net/XUAParams$Builder;->access$400(Lcom/tds/common/net/XUAParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/XUAParams;->sdkVersionName:Ljava/lang/String;

    .line 35
    # getter for: Lcom/tds/common/net/XUAParams$Builder;->lang:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/net/XUAParams$Builder;->access$500(Lcom/tds/common/net/XUAParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/XUAParams;->lang:Ljava/lang/String;

    .line 36
    # getter for: Lcom/tds/common/net/XUAParams$Builder;->deviceId:Ljava/lang/String;
    invoke-static {p1}, Lcom/tds/common/net/XUAParams$Builder;->access$600(Lcom/tds/common/net/XUAParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/XUAParams;->deviceId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static getCommonXUAParams(Ljava/lang/String;ILjava/lang/String;)Lcom/tds/common/net/XUAParams;
    .registers 5
    .param p0, "sdkName"    # Ljava/lang/String;
    .param p1, "sdkVersionCode"    # I
    .param p2, "sdkVersionName"    # Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/tds/common/net/XUAParams$Builder;

    invoke-direct {v0}, Lcom/tds/common/net/XUAParams$Builder;-><init>()V

    .line 41
    invoke-static {}, Lcom/tds/common/utils/DeviceUtils;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/net/XUAParams$Builder;->headersPlatform(Ljava/lang/String;)Lcom/tds/common/net/XUAParams$Builder;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/tds/common/utils/DeviceUtils;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/net/XUAParams$Builder;->headersOSVersion(Ljava/lang/String;)Lcom/tds/common/net/XUAParams$Builder;

    move-result-object v0

    sget-object v1, Lcom/tds/common/utils/GUIDHelper;->INSTANCE:Lcom/tds/common/utils/GUIDHelper;

    .line 43
    invoke-virtual {v1}, Lcom/tds/common/utils/GUIDHelper;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/net/XUAParams$Builder;->headersDeviceId(Ljava/lang/String;)Lcom/tds/common/net/XUAParams$Builder;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/tds/common/localize/LocalizeManager;->getPreferredLanguageString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/net/XUAParams$Builder;->headersLang(Ljava/lang/String;)Lcom/tds/common/net/XUAParams$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p0}, Lcom/tds/common/net/XUAParams$Builder;->headersSdkName(Ljava/lang/String;)Lcom/tds/common/net/XUAParams$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Lcom/tds/common/net/XUAParams$Builder;->headersSdkVersionCode(I)Lcom/tds/common/net/XUAParams$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p2}, Lcom/tds/common/net/XUAParams$Builder;->headersSdkVersionName(Ljava/lang/String;)Lcom/tds/common/net/XUAParams$Builder;

    move-result-object v0

    .line 48
    .local v0, "builder":Lcom/tds/common/net/XUAParams$Builder;
    invoke-virtual {v0}, Lcom/tds/common/net/XUAParams$Builder;->build()Lcom/tds/common/net/XUAParams;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getXUAValue()Ljava/lang/String;
    .registers 7

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v0, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/tds/common/net/XUAParams;->platform:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 111
    iget-object v1, p0, Lcom/tds/common/net/XUAParams;->platform:Ljava/lang/String;

    const-string v2, "Platform"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_14
    iget-object v1, p0, Lcom/tds/common/net/XUAParams;->osVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 113
    iget-object v1, p0, Lcom/tds/common/net/XUAParams;->osVersion:Ljava/lang/String;

    const-string v2, "OS-Version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_23
    iget-object v1, p0, Lcom/tds/common/net/XUAParams;->sdkName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 115
    iget-object v1, p0, Lcom/tds/common/net/XUAParams;->sdkName:Ljava/lang/String;

    const-string v2, "SDK-Name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_32
    iget v1, p0, Lcom/tds/common/net/XUAParams;->sdkVersionCode:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_41

    .line 117
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDK-Version-Code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_41
    iget-object v1, p0, Lcom/tds/common/net/XUAParams;->sdkVersionName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 119
    iget-object v1, p0, Lcom/tds/common/net/XUAParams;->sdkVersionName:Ljava/lang/String;

    const-string v2, "SDK-Version-Name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_50
    invoke-static {}, Lcom/tds/common/localize/LocalizeManager;->getPreferredLanguageString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Lang"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/tds/common/net/XUAParams;->deviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 122
    iget-object v1, p0, Lcom/tds/common/net/XUAParams;->deviceId:Ljava/lang/String;

    const-string v2, "Device-ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_68
    invoke-static {}, Lcom/tds/common/net/PlatformXUA;->getInstance()Lcom/tds/common/net/PlatformXUA;

    move-result-object v1

    iget-object v1, v1, Lcom/tds/common/net/PlatformXUA;->xuaMap:Ljava/util/Map;

    .line 125
    .local v1, "platformXua":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_79

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_79

    .line 126
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 129
    :cond_79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v2, "xuaStringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 131
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_9d

    .line 132
    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_9d
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_86

    .line 138
    :cond_b5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
