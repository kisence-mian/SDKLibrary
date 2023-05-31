.class public Lcom/mintegral/msdk/out/MtgBidNativeHandler;
.super Lcom/mintegral/msdk/out/MtgBidCommonHandler;
.source "MtgBidNativeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/out/MtgBidNativeHandler$KeyWordInfo;
    }
.end annotation


# static fields
.field public static final TEMPLATE_ID:Ljava/lang/String; = "id"

.field public static final TEMPLATE_NUM:Ljava/lang/String; = "ad_num"

.field private static final g:Ljava/lang/String;

.field private static k:Ljava/lang/String;


# instance fields
.field private c:Lcom/mintegral/msdk/mtgnative/d/a;

.field private d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

.field private e:Lcom/mintegral/msdk/mtgnative/f/a;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/NativeListener$Template;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/mintegral/msdk/click/a;

.field private i:Landroid/content/Context;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mintegral/msdk/out/MtgBidCommonHandler;-><init>()V

    .line 33
    new-instance v0, Lcom/mintegral/msdk/mtgnative/d/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/mtgnative/d/a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    .line 51
    iput-object p1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->i:Landroid/content/Context;

    .line 52
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1f

    if-eqz p1, :cond_1f

    .line 53
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/controller/a;->a(Landroid/content/Context;)V

    .line 55
    :cond_1f
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/out/MtgBidCommonHandler;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/mintegral/msdk/mtgnative/d/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/mtgnative/d/a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    .line 59
    iput-object p2, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->i:Landroid/content/Context;

    .line 60
    iput-object p1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->j:Ljava/util/Map;

    .line 61
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_21

    if-eqz p2, :cond_21

    .line 62
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/controller/a;->a(Landroid/content/Context;)V

    .line 66
    :cond_21
    if-eqz p1, :cond_6c

    :try_start_23
    const-string v0, "unit_id"

    .line 67
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string v0, "unit_id"

    .line 68
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6c

    const-string v0, "unit_id"

    .line 69
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_6c

    const-string v0, "native_video_width"

    .line 71
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string v0, "native_video_width"

    .line 72
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6c

    const-string v0, "native_video_width"

    .line 73
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6c

    const-string v0, "native_video_height"

    .line 75
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string v0, "native_video_height"

    .line 76
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6c

    const-string v0, "native_video_height"

    .line 77
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_6c} :catch_6d

    .line 84
    :cond_6c
    :goto_6c
    return-void

    .line 80
    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6c
.end method

.method public static getNativeProperties(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    sput-object p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->k:Ljava/lang/String;

    .line 105
    const-string v1, "unit_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "plugin_name"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "MVNativePlugin"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "layout_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-object v0
.end method

.method public static getTemplateString(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/NativeListener$Template;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 152
    if-eqz p0, :cond_62

    :try_start_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_62

    .line 153
    const-string v1, "[{$native_info}]"

    .line 154
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/NativeListener$Template;

    .line 156
    const-string v4, "{\"id\":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/NativeListener$Template;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\"ad_num\":"

    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/NativeListener$Template;->getAdNum()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "},"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    :catch_61
    move-exception v0

    .line 164
    :cond_62
    const/4 v0, 0x0

    :goto_63
    return-object v0

    .line 159
    :cond_64
    const-string v0, "{$native_info}"

    const/4 v3, 0x0

    const-string v4, ","

    .line 160
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 159
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_74} :catch_61

    move-result-object v0

    goto :goto_63
.end method

.method public static parseKeyWordInfoListStr(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/MtgBidNativeHandler$KeyWordInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 169
    if-eqz p0, :cond_7d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7d

    .line 171
    :try_start_9
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v1, v0

    .line 172
    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_86

    .line 173
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 174
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/MtgBidNativeHandler$KeyWordInfo;

    .line 175
    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MtgBidNativeHandler$KeyWordInfo;->getKeyWordPN()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 176
    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MtgBidNativeHandler$KeyWordInfo;->getKeyWorkVN()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 177
    const-string v4, "p"

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MtgBidNativeHandler$KeyWordInfo;->getKeyWordPN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v4, "v"

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MtgBidNativeHandler$KeyWordInfo;->getKeyWorkVN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    .line 180
    if-eqz v4, :cond_62

    .line 181
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->l()Ljava/util/List;

    move-result-object v4

    .line 182
    if-eqz v4, :cond_7f

    .line 183
    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MtgBidNativeHandler$KeyWordInfo;->getKeyWordPN()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 184
    const-string v0, "i"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 192
    :cond_62
    :goto_62
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 172
    :cond_65
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 186
    :cond_69
    const-string v0, "i"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6f} :catch_70

    goto :goto_62

    .line 196
    :catch_70
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    sget-object v1, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    return-object v0

    .line 189
    :cond_7f
    :try_start_7f
    const-string v0, "i"

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_62

    .line 195
    :cond_86
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_89} :catch_70

    move-result-object v0

    goto :goto_7e
.end method


# virtual methods
.method public addTemplate(Lcom/mintegral/msdk/out/NativeListener$Template;)V
    .registers 3

    .prologue
    .line 112
    if-eqz p1, :cond_12

    .line 113
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->f:Ljava/util/List;

    if-nez v0, :cond_d

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->f:Ljava/util/List;

    .line 116
    :cond_d
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_12
    return-void
.end method

.method public bidLoad(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    if-eqz v0, :cond_20

    .line 1207
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    const-string v1, "bidToken can not be null, bid first"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgnative/d/a;->onAdLoadError(Ljava/lang/String;)V

    .line 1228
    :goto_1f
    return-void

    .line 1210
    :cond_20
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1211
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->f:Ljava/util/List;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_45

    .line 1213
    :try_start_3a
    invoke-virtual {p0}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->buildTemplateString()Ljava/lang/String;

    move-result-object v0

    .line 1214
    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    const-string v2, "native_info"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_45} :catch_6f

    .line 1220
    :cond_45
    :goto_45
    :try_start_45
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-nez v0, :cond_64

    .line 1222
    new-instance v0, Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;-><init>(Lcom/mintegral/msdk/mtgnative/d/a;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    .line 1223
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 1225
    :cond_64
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_69} :catch_6a

    goto :goto_1f

    .line 1227
    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f

    .line 1216
    :catch_6f
    move-exception v0

    const-string v0, "com.mintegral.msdk"

    const-string v1, "MTGSDK set template error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 1231
    :cond_78
    const-string v0, ""

    const-string v1, "no unit id."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 91
    :cond_80
    const-string v0, ""

    const-string v1, "no unit id."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public bidRelease()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgnative/f/a;->d()V

    .line 100
    :cond_9
    return-void
.end method

.method public buildTemplateString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->f:Ljava/util/List;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_68

    .line 135
    const-string v1, "[{$native_info}]"

    .line 136
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/NativeListener$Template;

    .line 138
    const-string v4, "{\"id\":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/NativeListener$Template;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\"ad_num\":"

    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/NativeListener$Template;->getAdNum()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "},"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_19

    :catch_67
    move-exception v0

    .line 146
    :cond_68
    const/4 v0, 0x0

    :goto_69
    return-object v0

    .line 141
    :cond_6a
    const-string v0, "{$native_info}"

    const/4 v3, 0x0

    const-string v4, ","

    .line 142
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 141
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7a} :catch_67

    move-result-object v0

    goto :goto_69
.end method

.method public clearCacheByUnitid(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 342
    :try_start_0
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 360
    :goto_6
    return-void

    .line 346
    :cond_7
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    .line 345
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v0

    .line 347
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/b/f;->b(Ljava/lang/String;)V

    .line 349
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v0

    .line 350
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgnative/a/b;->a(Ljava/lang/String;)V

    .line 352
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v0

    .line 353
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgnative/a/b;->a(Ljava/lang/String;)V

    .line 355
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v0

    .line 356
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgnative/a/b;->a(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_6

    .line 357
    :catch_33
    move-exception v0

    .line 358
    sget-object v1, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public clearVideoCache()V
    .registers 3

    .prologue
    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-eqz v0, :cond_7

    .line 334
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/f/a;->c()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 339
    :cond_7
    :goto_7
    return-void

    .line 336
    :catch_8
    move-exception v0

    .line 337
    sget-object v1, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public getAdListener()Lcom/mintegral/msdk/mtgnative/d/a;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    return-object v0
.end method

.method public getTrackingListener()Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    return-object v0
.end method

.method public handleResult(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->h:Lcom/mintegral/msdk/click/a;

    if-nez v0, :cond_1c

    .line 122
    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->j:Ljava/util/Map;

    if-eqz v1, :cond_13

    .line 124
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->j:Ljava/util/Map;

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    :cond_13
    new-instance v1, Lcom/mintegral/msdk/click/a;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->i:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/mintegral/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->h:Lcom/mintegral/msdk/click/a;

    .line 128
    :cond_1c
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->h:Lcom/mintegral/msdk/click/a;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public registerView(Landroid/view/View;Lcom/mintegral/msdk/out/Campaign;)V
    .registers 6

    .prologue
    .line 236
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-nez v0, :cond_23

    .line 237
    new-instance v0, Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;-><init>(Lcom/mintegral/msdk/mtgnative/d/a;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    .line 238
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    if-eqz v0, :cond_1a

    .line 239
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 243
    :cond_23
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Landroid/view/View;Lcom/mintegral/msdk/out/Campaign;)V

    .line 244
    return-void
.end method

.method public registerView(Landroid/view/View;Ljava/util/List;Lcom/mintegral/msdk/out/Campaign;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/mintegral/msdk/out/Campaign;",
            ")V"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-nez v0, :cond_23

    .line 248
    new-instance v0, Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;-><init>(Lcom/mintegral/msdk/mtgnative/d/a;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    .line 249
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    if-eqz v0, :cond_1a

    .line 250
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 254
    :cond_23
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Landroid/view/View;Ljava/util/List;Lcom/mintegral/msdk/out/Campaign;)V

    .line 255
    return-void
.end method

.method public setAdListener(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V
    .registers 4

    .prologue
    .line 284
    new-instance v0, Lcom/mintegral/msdk/mtgnative/d/a;

    invoke-direct {v0, p1}, Lcom/mintegral/msdk/mtgnative/d/a;-><init>(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    .line 285
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-eqz v0, :cond_12

    .line 286
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Lcom/mintegral/msdk/mtgnative/d/a;)V

    .line 288
    :cond_12
    return-void
.end method

.method public setMustBrowser(Z)V
    .registers 2

    .prologue
    .line 47
    sput-boolean p1, Lcom/mintegral/msdk/base/utils/j;->a:Z

    .line 48
    return-void
.end method

.method public setTrackingListener(Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V
    .registers 3

    .prologue
    .line 295
    iput-object p1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    .line 296
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-eqz v0, :cond_b

    .line 297
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 299
    :cond_b
    return-void
.end method

.method public unregisterView(Landroid/view/View;Lcom/mintegral/msdk/out/Campaign;)V
    .registers 6

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-nez v0, :cond_23

    .line 259
    new-instance v0, Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;-><init>(Lcom/mintegral/msdk/mtgnative/d/a;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    .line 260
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    if-eqz v0, :cond_1a

    .line 261
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 265
    :cond_23
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/mtgnative/f/a;->b(Landroid/view/View;Lcom/mintegral/msdk/out/Campaign;)V

    .line 266
    return-void
.end method

.method public unregisterView(Landroid/view/View;Ljava/util/List;Lcom/mintegral/msdk/out/Campaign;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/mintegral/msdk/out/Campaign;",
            ")V"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-nez v0, :cond_23

    .line 270
    new-instance v0, Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;-><init>(Lcom/mintegral/msdk/mtgnative/d/a;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    .line 271
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    if-eqz v0, :cond_1a

    .line 272
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 276
    :cond_23
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mintegral/msdk/mtgnative/f/a;->b(Landroid/view/View;Ljava/util/List;Lcom/mintegral/msdk/out/Campaign;)V

    .line 277
    return-void
.end method
