.class public Lcom/mintegral/msdk/out/MtgWallHandler;
.super Lcom/mintegral/msdk/out/MtgCommonHandler;
.source "MtgWallHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/out/MtgWallHandler$AppWallViewLoadingEndListener;,
        Lcom/mintegral/msdk/out/MtgWallHandler$AppWallViewNoMoreDateListener;,
        Lcom/mintegral/msdk/out/MtgWallHandler$AppWallViewCampaignClickListener;,
        Lcom/mintegral/msdk/out/MtgWallHandler$WallViewBackClickListener;
    }
.end annotation


# instance fields
.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/View;

.field private e:Lcom/mintegral/msdk/appwall/service/HandlerProvider;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .registers 3
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
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/out/MtgCommonHandler;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->f:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Landroid/content/Context;Landroid/view/ViewGroup;)V
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
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/out/MtgCommonHandler;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->f:Landroid/content/Context;

    .line 37
    invoke-virtual {p0, p3}, Lcom/mintegral/msdk/out/MtgWallHandler;->setHandlerContainer(Landroid/view/ViewGroup;)V

    .line 38
    return-void
.end method

.method private a()Z
    .registers 5

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->d:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 114
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->a:Ljava/util/Map;

    const-string v1, "wall_entry"

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->d:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_d
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->e:Lcom/mintegral/msdk/appwall/service/HandlerProvider;

    if-nez v0, :cond_22

    .line 117
    new-instance v0, Lcom/mintegral/msdk/appwall/service/HandlerProvider;

    invoke-direct {v0}, Lcom/mintegral/msdk/appwall/service/HandlerProvider;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->e:Lcom/mintegral/msdk/appwall/service/HandlerProvider;

    .line 118
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->e:Lcom/mintegral/msdk/appwall/service/HandlerProvider;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->c:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/appwall/service/HandlerProvider;->insetView(Landroid/view/ViewGroup;Landroid/content/res/Resources;Ljava/util/Map;)V

    .line 120
    :cond_22
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->e:Lcom/mintegral/msdk/appwall/service/HandlerProvider;

    invoke-virtual {v0}, Lcom/mintegral/msdk/appwall/service/HandlerProvider;->load()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_29

    .line 124
    :goto_27
    const/4 v0, 0x1

    return v0

    .line 122
    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method public static getWallProperties(Ljava/lang/String;)Ljava/util/Map;
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
    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    const-string v1, "unit_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "plugin_name"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MVWallPlugin"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "layout_type"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-object v0
.end method


# virtual methods
.method public getHandlerContainer()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getHandlerCustomerLayout()Landroid/view/View;
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->d:Landroid/view/View;

    return-object v0
.end method

.method public getWallView(Landroid/content/Context;Lcom/mintegral/msdk/out/AppWallTrackingListener;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->a:Ljava/util/Map;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4f

    .line 187
    :try_start_d
    const-string v1, "com.mintegral.msdk.appwallex.WallView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 188
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-class v4, Lcom/mintegral/msdk/out/AppWallTrackingListener;

    aput-object v4, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 189
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_30} :catch_294

    move-result-object v1

    .line 191
    :try_start_31
    const-string v3, "setParamsIntent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 192
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->a:Ljava/util/Map;

    .line 1249
    if-nez v6, :cond_50

    .line 192
    :cond_47
    :goto_47
    aput-object v0, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4c} :catch_29a

    move-object v0, v1

    .line 205
    :goto_4d
    check-cast v0, Landroid/view/View;

    .line 207
    :cond_4f
    return-object v0

    .line 1252
    :cond_50
    :try_start_50
    const-string v2, "unit_id"

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1255
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1256
    const-string v7, "unit_id"

    const-string v0, "unit_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const-string v0, "wall_title_background_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1258
    const-string v0, "wall_title_background_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1259
    const-string v7, "wall_title_background_id"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1261
    :cond_83
    const-string v0, "wall_title_logo_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1262
    const-string v0, "wall_title_logo_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1263
    const-string v7, "wall_title_logo_id"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1265
    :cond_9c
    const-string v0, "wall_main_background_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 1266
    const-string v0, "wall_main_background_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1267
    const-string v7, "wall_main_background_id"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1269
    :cond_b5
    const-string v0, "wall_tab_background_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 1270
    const-string v0, "wall_tab_background_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1271
    const-string v7, "wall_tab_background_id"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1273
    :cond_ce
    const-string v0, "wall_tab_line_background_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 1274
    const-string v0, "wall_tab_line_background_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1275
    const-string v7, "wall_tab_line_background_id"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1277
    :cond_e7
    const-string v0, "wall_button_background_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 1278
    const-string v0, "wall_button_background_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1279
    const-string v7, "wall_button_background_id"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1281
    :cond_100
    const-string v0, "wall_load_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 1282
    const-string v0, "wall_load_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1283
    const-string v7, "wall_load_id"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1285
    :cond_119
    const-string v0, "wall_status_color"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 1286
    const-string v0, "wall_status_color"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1288
    if-lez v0, :cond_134

    .line 1289
    const-string v7, "wall_status_color"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1293
    :cond_134
    const-string v0, "wall_navigation_color"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 1294
    const-string v0, "wall_navigation_color"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1295
    if-lez v0, :cond_14f

    .line 1296
    const-string v7, "wall_navigation_color"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1300
    :cond_14f
    const-string v0, "wall_title_background_color"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 1301
    const-string v0, "wall_title_background_color"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1302
    if-lez v0, :cond_16a

    .line 1303
    const-string v7, "wall_title_background_color"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1309
    :cond_16a
    const-string v0, "wall_title_logo_text"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    .line 1310
    const-string v0, "wall_title_logo_text"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_185

    .line 1312
    const-string v7, "wall_title_logo_text"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    :cond_185
    const-string v0, "wall_title_logo_text_color"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 1317
    const-string v0, "wall_title_logo_text_color"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1318
    if-lez v0, :cond_1a0

    .line 1319
    const-string v7, "wall_title_logo_text_color"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1323
    :cond_1a0
    const-string v0, "wall_title_logo_text_size"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    .line 1324
    const-string v0, "wall_title_logo_text_size"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1325
    if-lez v0, :cond_1bb

    .line 1326
    const-string v7, "wall_title_logo_text_size"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1331
    :cond_1bb
    const-string v0, "wall_title_logo_text_typeface"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    .line 1332
    const-string v0, "wall_title_logo_text_typeface"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1333
    if-lez v0, :cond_1d6

    .line 1334
    const-string v7, "wall_title_logo_text_typeface"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1339
    :cond_1d6
    const-string v0, "wall_current_tab_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f1

    .line 1340
    const-string v0, "wall_current_tab_id"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1341
    if-ltz v0, :cond_1f1

    .line 1342
    const-string v7, "wall_current_tab_id"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1347
    :cond_1f1
    const-string v0, "wall_tab_shape_color"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20c

    .line 1348
    const-string v0, "wall_tab_shape_color"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1349
    if-ltz v0, :cond_20c

    .line 1350
    const-string v7, "wall_tab_shape_color"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1355
    :cond_20c
    const-string v0, "wall_tab_shape_height"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_227

    .line 1356
    const-string v0, "wall_tab_shape_height"

    .line 1357
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1356
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1358
    if-ltz v0, :cond_227

    .line 1359
    const-string v7, "wall_tab_shape_height"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1364
    :cond_227
    const-string v0, "wall_configchanges"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_240

    .line 1365
    const-string v0, "wall_configchanges"

    .line 1366
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1365
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1367
    const-string v7, "wall_configchanges"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1371
    :cond_240
    const-string v0, "wall_view_viewpager_noscroll"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25d

    .line 1372
    const-string v0, "wall_view_viewpager_noscroll"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1373
    instance-of v7, v0, Ljava/lang/Boolean;

    if-eqz v7, :cond_25d

    .line 1374
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1375
    const-string v7, "wall_view_viewpager_noscroll"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1380
    :cond_25d
    const-string v0, "wall_view_viewpager_noscroll"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27a

    .line 1381
    const-string v0, "wall_view_viewpager_noscroll"

    .line 1382
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1383
    instance-of v7, v0, Ljava/lang/Boolean;

    if-eqz v7, :cond_27a

    .line 1384
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1385
    const-string v7, "wall_view_viewpager_noscroll"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1389
    :cond_27a
    const-string v0, "appwall_view_load_result_listener"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_291

    .line 1390
    const-string v0, "appwall_view_load_result_listener"

    .line 1391
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/LoadListener;

    .line 1392
    if-eqz v0, :cond_291

    .line 1393
    const-string v6, "appwall_view_load_result_listener"

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_291
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_291} :catch_29a

    :cond_291
    move-object v0, v2

    .line 1397
    goto/16 :goto_47

    .line 195
    :catch_294
    move-exception v1

    :goto_295
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4d

    :catch_29a
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_295
.end method

.method public load()Z
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->a:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->a:Ljava/util/Map;

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 101
    invoke-direct {p0}, Lcom/mintegral/msdk/out/MtgWallHandler;->a()Z

    .line 105
    :goto_11
    const/4 v0, 0x1

    return v0

    .line 103
    :cond_13
    const-string v0, ""

    const-string v1, "no unit id."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public refreshUI(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 64
    :try_start_0
    const-string v0, "com.mintegral.msdk.appwallex.WallView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 65
    if-eqz p1, :cond_21

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    const-string v2, "refresh"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 71
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 86
    :cond_21
    :goto_21
    return-void

    .line 76
    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->e:Lcom/mintegral/msdk/appwall/service/HandlerProvider;

    if-eqz v0, :cond_a

    .line 131
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->e:Lcom/mintegral/msdk/appwall/service/HandlerProvider;

    invoke-virtual {v0}, Lcom/mintegral/msdk/appwall/service/HandlerProvider;->release()V

    .line 133
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    .line 134
    iput-object v1, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->c:Landroid/view/ViewGroup;

    .line 136
    :cond_10
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->d:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 137
    iput-object v1, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->d:Landroid/view/View;

    .line 140
    :cond_16
    return-void
.end method

.method public releaseWallView(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 217
    :try_start_0
    const-string v0, "com.mintegral.msdk.appwallex.WallView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 218
    if-eqz p1, :cond_21

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 222
    const-string v2, "destory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 224
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_29

    .line 236
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->f:Landroid/content/Context;

    if-eqz v0, :cond_28

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->f:Landroid/content/Context;

    .line 239
    :cond_28
    return-void

    .line 229
    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method public setAppWallViewCampaignClickListener(Landroid/view/View;Lcom/mintegral/msdk/out/MtgWallHandler$AppWallViewCampaignClickListener;)V
    .registers 9

    .prologue
    .line 448
    :try_start_0
    const-string v0, "com.mintegral.msdk.appwallex.WallView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 449
    if-eqz p1, :cond_29

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 451
    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 453
    const-string v2, "setAppWallViewCampaignClickListener"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/mintegral/msdk/out/MtgWallHandler$AppWallViewCampaignClickListener;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 455
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 464
    :cond_29
    :goto_29
    return-void

    .line 460
    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public setAppWallViewLoadingEnd(Landroid/view/View;Lcom/mintegral/msdk/out/MtgWallHandler$AppWallViewLoadingEndListener;)V
    .registers 9

    .prologue
    .line 497
    :try_start_0
    const-string v0, "com.mintegral.msdk.appwallex.WallView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 498
    if-eqz p1, :cond_29

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 500
    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 502
    const-string v2, "setAppWallViewLoadingEndListener"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/mintegral/msdk/out/MtgWallHandler$AppWallViewLoadingEndListener;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 504
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 519
    :cond_29
    :goto_29
    return-void

    .line 509
    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public setAppWallViewNoMoreDateListener(Landroid/view/View;Lcom/mintegral/msdk/out/MtgWallHandler$AppWallViewNoMoreDateListener;)V
    .registers 9

    .prologue
    .line 470
    :try_start_0
    const-string v0, "com.mintegral.msdk.appwallex.WallView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 471
    if-eqz p1, :cond_29

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 473
    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 475
    const-string v2, "setAppWallViewNoMoreDateListener"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/mintegral/msdk/out/MtgWallHandler$AppWallViewNoMoreDateListener;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 477
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 491
    :cond_29
    :goto_29
    return-void

    .line 482
    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public setHandlerContainer(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 405
    iput-object p1, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->c:Landroid/view/ViewGroup;

    .line 406
    return-void
.end method

.method public setHandlerCustomerLayout(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 413
    iput-object p1, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->d:Landroid/view/View;

    .line 414
    return-void
.end method

.method public setWallViewBackClickListener(Landroid/view/View;Lcom/mintegral/msdk/out/MtgWallHandler$WallViewBackClickListener;)V
    .registers 9

    .prologue
    .line 151
    :try_start_0
    const-string v0, "com.mintegral.msdk.appwallex.WallView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 152
    if-eqz p1, :cond_29

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 156
    const-string v2, "setmWallViewClickListener"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/mintegral/msdk/out/MtgWallHandler$WallViewBackClickListener;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 158
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 172
    :cond_29
    :goto_29
    return-void

    .line 163
    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public startWall()V
    .registers 4

    .prologue
    .line 523
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->a:Ljava/util/Map;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->a:Ljava/util/Map;

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1532
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->e:Lcom/mintegral/msdk/appwall/service/HandlerProvider;

    if-nez v0, :cond_19

    .line 1533
    new-instance v0, Lcom/mintegral/msdk/appwall/service/HandlerProvider;

    invoke-direct {v0}, Lcom/mintegral/msdk/appwall/service/HandlerProvider;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->e:Lcom/mintegral/msdk/appwall/service/HandlerProvider;

    .line 1535
    :cond_19
    iget-object v0, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->e:Lcom/mintegral/msdk/appwall/service/HandlerProvider;

    iget-object v1, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/out/MtgWallHandler;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/appwall/service/HandlerProvider;->startShuffleOrAppwall(Landroid/content/Context;Ljava/util/Map;)V

    .line 529
    :goto_22
    return-void

    .line 527
    :cond_23
    const-string v0, ""

    const-string v1, "no unit id."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method
