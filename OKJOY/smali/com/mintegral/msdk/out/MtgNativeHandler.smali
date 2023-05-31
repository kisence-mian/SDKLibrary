.class public Lcom/mintegral/msdk/out/MtgNativeHandler;
.super Lcom/mintegral/msdk/out/MtgCommonHandler;
.source "MtgNativeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/out/MtgNativeHandler$KeyWordInfo;
    }
.end annotation


# static fields
.field public static final OPERATE_LOAD:I = 0x1

.field public static final OPERATE_LOAD_FRAME:I = 0x2

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
    const-class v0, Lcom/mintegral/msdk/out/MtgNativeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/out/MtgNativeHandler;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mintegral/msdk/out/MtgCommonHandler;-><init>()V

    .line 33
    new-instance v0, Lcom/mintegral/msdk/mtgnative/d/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/mtgnative/d/a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    .line 51
    iput-object p1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->i:Landroid/content/Context;

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
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/out/MtgCommonHandler;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/mintegral/msdk/mtgnative/d/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/mtgnative/d/a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    .line 59
    iput-object p2, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->i:Landroid/content/Context;

    .line 60
    iput-object p1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->j:Ljava/util/Map;

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

    .line 65
    :cond_21
    if-eqz p1, :cond_6c

    :try_start_23
    const-string v0, "unit_id"

    .line 66
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string v0, "unit_id"

    .line 67
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6c

    const-string v0, "unit_id"

    .line 68
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_6c

    const-string v0, "native_video_width"

    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string v0, "native_video_width"

    .line 71
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6c

    const-string v0, "native_video_width"

    .line 72
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6c

    const-string v0, "native_video_height"

    .line 74
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string v0, "native_video_height"

    .line 75
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6c

    const-string v0, "native_video_height"

    .line 76
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_6c} :catch_6d

    .line 81
    :cond_6c
    :goto_6c
    return-void

    .line 79
    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6c
.end method

.method private a()Z
    .registers 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 198
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->f:Ljava/util/List;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 200
    :try_start_1a
    invoke-virtual {p0}, Lcom/mintegral/msdk/out/MtgNativeHandler;->buildTemplateString()Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    const-string v2, "native_info"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_4b

    .line 207
    :cond_25
    :goto_25
    :try_start_25
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-nez v0, :cond_44

    .line 209
    new-instance v0, Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;-><init>(Lcom/mintegral/msdk/mtgnative/d/a;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    .line 210
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 212
    :cond_44
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgnative/f/a;->a()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_49} :catch_54

    .line 220
    :goto_49
    const/4 v0, 0x1

    return v0

    .line 203
    :catch_4b
    move-exception v0

    const-string v0, "com.mintegral.msdk"

    const-string v1, "MTGSDK set template error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 214
    :catch_54
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49

    .line 218
    :cond_59
    const-string v0, ""

    const-string v1, "no unit id."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49
.end method

.method private b()Z
    .registers 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->f:Ljava/util/List;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 235
    :try_start_c
    invoke-virtual {p0}, Lcom/mintegral/msdk/out/MtgNativeHandler;->buildTemplateString()Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    const-string v2, "native_info"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_3d

    .line 242
    :cond_17
    :goto_17
    :try_start_17
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-nez v0, :cond_36

    .line 244
    new-instance v0, Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;-><init>(Lcom/mintegral/msdk/mtgnative/d/a;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    .line 245
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 247
    :cond_36
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgnative/f/a;->b()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3b} :catch_46

    .line 251
    :goto_3b
    const/4 v0, 0x1

    return v0

    .line 238
    :catch_3d
    move-exception v0

    const-string v0, "com.mintegral.msdk"

    const-string v1, "MTGSDK set template error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 249
    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
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

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    sput-object p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->k:Ljava/lang/String;

    .line 86
    const-string v1, "unit_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "plugin_name"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "MVNativePlugin"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "layout_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
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
    .line 133
    if-eqz p0, :cond_62

    :try_start_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_62

    .line 134
    const-string v1, "[{$native_info}]"

    .line 135
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/NativeListener$Template;

    .line 137
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

    .line 138
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

    .line 145
    :cond_62
    const/4 v0, 0x0

    :goto_63
    return-object v0

    .line 140
    :cond_64
    const-string v0, "{$native_info}"

    const/4 v3, 0x0

    const-string v4, ","

    .line 141
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 140
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
            "Lcom/mintegral/msdk/out/MtgNativeHandler$KeyWordInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 150
    if-eqz p0, :cond_7d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7d

    .line 152
    :try_start_9
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v1, v0

    .line 153
    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_86

    .line 154
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 155
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/MtgNativeHandler$KeyWordInfo;

    .line 156
    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MtgNativeHandler$KeyWordInfo;->getKeyWordPN()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 157
    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MtgNativeHandler$KeyWordInfo;->getKeyWorkVN()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 158
    const-string v4, "p"

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MtgNativeHandler$KeyWordInfo;->getKeyWordPN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v4, "v"

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MtgNativeHandler$KeyWordInfo;->getKeyWorkVN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    .line 161
    if-eqz v4, :cond_62

    .line 162
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->l()Ljava/util/List;

    move-result-object v4

    .line 163
    if-eqz v4, :cond_7f

    .line 164
    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MtgNativeHandler$KeyWordInfo;->getKeyWordPN()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 165
    const-string v0, "i"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    :cond_62
    :goto_62
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 153
    :cond_65
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 167
    :cond_69
    const-string v0, "i"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6f} :catch_70

    goto :goto_62

    .line 177
    :catch_70
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    sget-object v1, Lcom/mintegral/msdk/out/MtgNativeHandler;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    return-object v0

    .line 170
    :cond_7f
    :try_start_7f
    const-string v0, "i"

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_62

    .line 176
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
    .line 93
    if-eqz p1, :cond_12

    .line 94
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->f:Ljava/util/List;

    if-nez v0, :cond_d

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->f:Ljava/util/List;

    .line 97
    :cond_d
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_12
    return-void
.end method

.method public buildTemplateString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->f:Ljava/util/List;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_68

    .line 116
    const-string v1, "[{$native_info}]"

    .line 117
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/NativeListener$Template;

    .line 119
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

    .line 120
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

    .line 127
    :cond_68
    const/4 v0, 0x0

    :goto_69
    return-object v0

    .line 122
    :cond_6a
    const-string v0, "{$native_info}"

    const/4 v3, 0x0

    const-string v4, ","

    .line 123
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 122
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7a} :catch_67

    move-result-object v0

    goto :goto_69
.end method

.method public clearCacheByUnitid(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 371
    :try_start_0
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 389
    :goto_6
    return-void

    .line 375
    :cond_7
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    .line 374
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v0

    .line 376
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/b/f;->b(Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v0

    .line 379
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgnative/a/b;->a(Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v0

    .line 382
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgnative/a/b;->a(Ljava/lang/String;)V

    .line 384
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v0

    .line 385
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgnative/a/b;->a(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_6

    .line 387
    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public clearVideoCache()V
    .registers 2

    .prologue
    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-eqz v0, :cond_7

    .line 362
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/f/a;->c()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 367
    :cond_7
    :goto_7
    return-void

    .line 365
    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getAdListener()Lcom/mintegral/msdk/mtgnative/d/a;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    return-object v0
.end method

.method public getTrackingListener()Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    return-object v0
.end method

.method public handleResult(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->h:Lcom/mintegral/msdk/click/a;

    if-nez v0, :cond_1c

    .line 103
    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->j:Ljava/util/Map;

    if-eqz v1, :cond_13

    .line 105
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->j:Ljava/util/Map;

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    :cond_13
    new-instance v1, Lcom/mintegral/msdk/click/a;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->i:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/mintegral/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->h:Lcom/mintegral/msdk/click/a;

    .line 109
    :cond_1c
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->h:Lcom/mintegral/msdk/click/a;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public load()Z
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 189
    invoke-direct {p0}, Lcom/mintegral/msdk/out/MtgNativeHandler;->a()Z

    .line 193
    :goto_11
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_13
    const-string v0, ""

    const-string v1, "no unit id."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public loadFrame()Z
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 225
    invoke-direct {p0}, Lcom/mintegral/msdk/out/MtgNativeHandler;->b()Z

    .line 229
    :goto_11
    const/4 v0, 0x1

    return v0

    .line 227
    :cond_13
    const-string v0, ""

    const-string v1, "no unit id."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public registerView(Landroid/view/View;Lcom/mintegral/msdk/out/Campaign;)V
    .registers 6

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-nez v0, :cond_23

    .line 256
    new-instance v0, Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;-><init>(Lcom/mintegral/msdk/mtgnative/d/a;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    .line 257
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    if-eqz v0, :cond_1a

    .line 258
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 262
    :cond_23
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Landroid/view/View;Lcom/mintegral/msdk/out/Campaign;)V

    .line 263
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
    .line 266
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-nez v0, :cond_23

    .line 267
    new-instance v0, Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;-><init>(Lcom/mintegral/msdk/mtgnative/d/a;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    .line 268
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    if-eqz v0, :cond_1a

    .line 269
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 273
    :cond_23
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Landroid/view/View;Ljava/util/List;Lcom/mintegral/msdk/out/Campaign;)V

    .line 274
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-eqz v0, :cond_9

    .line 301
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgnative/f/a;->d()V

    .line 303
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    .line 304
    return-void
.end method

.method public setAdListener(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V
    .registers 4

    .prologue
    .line 311
    new-instance v0, Lcom/mintegral/msdk/mtgnative/d/a;

    invoke-direct {v0, p1}, Lcom/mintegral/msdk/mtgnative/d/a;-><init>(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    .line 312
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-eqz v0, :cond_12

    .line 313
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Lcom/mintegral/msdk/mtgnative/d/a;)V

    .line 315
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
    .line 322
    iput-object p1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    .line 323
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-eqz v0, :cond_b

    .line 324
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 326
    :cond_b
    return-void
.end method

.method public unregisterView(Landroid/view/View;Lcom/mintegral/msdk/out/Campaign;)V
    .registers 6

    .prologue
    .line 277
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-nez v0, :cond_23

    .line 278
    new-instance v0, Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;-><init>(Lcom/mintegral/msdk/mtgnative/d/a;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    .line 279
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    if-eqz v0, :cond_1a

    .line 280
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 284
    :cond_23
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/mtgnative/f/a;->b(Landroid/view/View;Lcom/mintegral/msdk/out/Campaign;)V

    .line 285
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
    .line 288
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    if-nez v0, :cond_23

    .line 289
    new-instance v0, Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->c:Lcom/mintegral/msdk/mtgnative/d/a;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->d:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;-><init>(Lcom/mintegral/msdk/mtgnative/d/a;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    .line 290
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    if-eqz v0, :cond_1a

    .line 291
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/f/a;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 295
    :cond_23
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgNativeHandler;->e:Lcom/mintegral/msdk/mtgnative/f/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mintegral/msdk/mtgnative/f/a;->b(Landroid/view/View;Ljava/util/List;Lcom/mintegral/msdk/out/Campaign;)V

    .line 296
    return-void
.end method
