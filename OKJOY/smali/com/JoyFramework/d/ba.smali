.class public Lcom/JoyFramework/d/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/d/ba$a;,
        Lcom/JoyFramework/d/ba$b;
    }
.end annotation


# static fields
.field private static final a:I = 0xa

.field private static b:Lcom/JoyFramework/d/ba$b;

.field private static c:Lcom/JoyFramework/d/ba$a;

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 71
    sput-object v0, Lcom/JoyFramework/d/ba;->b:Lcom/JoyFramework/d/ba$b;

    .line 72
    sput-object v0, Lcom/JoyFramework/d/ba;->c:Lcom/JoyFramework/d/ba$a;

    .line 87
    sput-object v0, Lcom/JoyFramework/d/ba;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 36
    const/16 v0, 0xa

    if-ne p1, v0, :cond_20

    .line 37
    array-length v0, p3

    if-lez v0, :cond_15

    .line 38
    aget v0, p3, v2

    if-nez v0, :cond_16

    .line 39
    sget-object v0, Lcom/JoyFramework/d/ba;->b:Lcom/JoyFramework/d/ba$b;

    if-eqz v0, :cond_15

    .line 40
    sget-object v0, Lcom/JoyFramework/d/ba;->b:Lcom/JoyFramework/d/ba$b;

    invoke-interface {v0}, Lcom/JoyFramework/d/ba$b;->a()V

    .line 68
    :cond_15
    :goto_15
    return-void

    .line 43
    :cond_16
    sget-object v0, Lcom/JoyFramework/d/ba;->b:Lcom/JoyFramework/d/ba$b;

    if-eqz v0, :cond_15

    .line 44
    sget-object v0, Lcom/JoyFramework/d/ba;->b:Lcom/JoyFramework/d/ba$b;

    invoke-interface {v0}, Lcom/JoyFramework/d/ba$b;->b()V

    goto :goto_15

    .line 50
    :cond_20
    sget-object v0, Lcom/JoyFramework/d/ba;->d:Ljava/util/List;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/JoyFramework/d/ba;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 51
    sget-object v0, Lcom/JoyFramework/d/ba;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_33
    if-ge v1, v3, :cond_15

    .line 52
    sget-object v0, Lcom/JoyFramework/d/ba;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_5f

    .line 53
    array-length v0, p3

    if-lez v0, :cond_5f

    .line 54
    aget v0, p3, v2

    if-nez v0, :cond_63

    .line 55
    sget-object v0, Lcom/JoyFramework/d/ba;->c:Lcom/JoyFramework/d/ba$a;

    if-eqz v0, :cond_5f

    .line 56
    sget-object v4, Lcom/JoyFramework/d/ba;->c:Lcom/JoyFramework/d/ba$a;

    sget-object v0, Lcom/JoyFramework/d/ba;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v4, v0}, Lcom/JoyFramework/d/ba$a;->a(I)V

    .line 51
    :cond_5f
    :goto_5f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_33

    .line 59
    :cond_63
    sget-object v0, Lcom/JoyFramework/d/ba;->c:Lcom/JoyFramework/d/ba$a;

    if-eqz v0, :cond_5f

    .line 60
    sget-object v4, Lcom/JoyFramework/d/ba;->c:Lcom/JoyFramework/d/ba$a;

    sget-object v0, Lcom/JoyFramework/d/ba;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v4, v0}, Lcom/JoyFramework/d/ba$a;->b(I)V

    goto :goto_5f
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V
    .registers 5

    .prologue
    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 83
    sput-object p2, Lcom/JoyFramework/d/ba;->b:Lcom/JoyFramework/d/ba$b;

    .line 84
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V
    .registers 11

    .prologue
    .line 138
    if-eqz p0, :cond_10

    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    if-nez p3, :cond_11

    .line 192
    :cond_10
    :goto_10
    return-void

    .line 140
    :cond_11
    invoke-static {p0, p2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 143
    new-instance v2, Lcom/JoyFramework/d/bb;

    invoke-direct {v2, p0, p2, p3}, Lcom/JoyFramework/d/bb;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    const-string v3, "\u83b7\u53d6"

    const-string v4, "\u53d6\u6d88"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/JoyFramework/d/e;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_27

    goto :goto_10

    .line 189
    :catch_27
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    .line 157
    :cond_2c
    :try_start_2c
    const-string v1, ""

    .line 160
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 162
    const-string v1, "\u60a8\u5df2\u7981\u6b62\u624b\u673a\u72b6\u6001\u6743\u9650\u6388\u6743\uff0c\u8bf7\u524d\u5f80\u5e94\u7528\u6743\u9650\u4e2d\u52fe\u9009\u5141\u8bb8\u7535\u8bdd\u6743\u9650\u540e\u518d\u8bd5"

    .line 168
    :cond_38
    :goto_38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 170
    new-instance v2, Lcom/JoyFramework/d/bc;

    invoke-direct {v2, p0, v1}, Lcom/JoyFramework/d/bc;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v3, "\u786e\u5b9a"

    const-string v4, "\u91cd\u8bd5"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_10

    .line 164
    :cond_4e
    const-string v0, "android.permission.CALL_PHONE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 166
    const-string v1, "\u60a8\u5df2\u7981\u6b62\u6253\u7535\u8bdd\uff0c\u8bf7\u5148\u5230\u624b\u673a\u5e94\u7528\u4e2d\u52fe\u9009\u5141\u8bb8\u6743\u9650\u540e\u518d\u8bd5"
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_58} :catch_27

    goto :goto_38
.end method

.method public static a(Landroid/app/Activity;Ljava/util/Map;Lcom/JoyFramework/d/ba$a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/JoyFramework/d/ba$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 114
    :cond_a
    :goto_a
    return-void

    .line 101
    :cond_b
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/JoyFramework/d/ba;->d:Ljava/util/List;

    if-nez v1, :cond_1e

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/JoyFramework/d/ba;->d:Ljava/util/List;

    .line 106
    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 109
    sget-object v2, Lcom/JoyFramework/d/ba;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v2, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 113
    :cond_48
    sput-object p2, Lcom/JoyFramework/d/ba;->c:Lcom/JoyFramework/d/ba$a;

    goto :goto_a
.end method

.method public static a(Landroid/app/Activity;)Z
    .registers 4

    .prologue
    const/16 v2, 0x17

    const/4 v0, 0x0

    .line 224
    if-eqz p0, :cond_12

    .line 225
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 227
    if-lt v1, v2, :cond_12

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_12

    .line 229
    const/4 v0, 0x1

    .line 235
    :cond_12
    return v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 286
    if-eqz p0, :cond_10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 287
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 293
    :cond_10
    :goto_10
    return v0

    .line 290
    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V
    .registers 5

    .prologue
    .line 310
    if-eqz p0, :cond_4

    if-nez p3, :cond_5

    .line 349
    :cond_4
    :goto_4
    return-void

    .line 311
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 313
    invoke-static {p0}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_1b

    .line 315
    invoke-interface {p3}, Lcom/JoyFramework/d/ba$b;->a()V

    goto :goto_4

    .line 318
    :cond_1b
    invoke-static {p0, p1}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 319
    if-eqz v0, :cond_25

    .line 320
    invoke-interface {p3}, Lcom/JoyFramework/d/ba$b;->a()V

    goto :goto_4

    .line 323
    :cond_25
    new-instance v0, Lcom/JoyFramework/d/bd;

    invoke-direct {v0, p3, p0, p2, p1}, Lcom/JoyFramework/d/bd;-><init>(Lcom/JoyFramework/d/ba$b;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    goto :goto_4
.end method

.method public static b(Landroid/app/Activity;)Z
    .registers 4

    .prologue
    const/16 v2, 0x1d

    const/4 v0, 0x0

    .line 244
    if-eqz p0, :cond_12

    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 247
    if-lt v1, v2, :cond_12

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_12

    .line 249
    const/4 v0, 0x1

    .line 255
    :cond_12
    return v0
.end method

.method public static c(Landroid/app/Activity;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 265
    if-eqz p0, :cond_a

    .line 267
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_a

    .line 269
    const/4 v0, 0x1

    .line 275
    :cond_a
    return v0
.end method

.method static synthetic d(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/JoyFramework/d/ba;->e(Landroid/app/Activity;)V

    return-void
.end method

.method private static e(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 200
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_27

    .line 203
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v1, "package"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 212
    :goto_23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 216
    :goto_26
    return-void

    .line 205
    :cond_27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_48

    .line 206
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v1, "com.android.settings"

    const-string v2, "com.android.setting.InstalledAppDetails"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v1, "com.android.settings.ApplicationPkgName"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_23

    .line 213
    :catch_43
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    .line 210
    :cond_48
    :try_start_48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4f} :catch_43

    goto :goto_23
.end method
