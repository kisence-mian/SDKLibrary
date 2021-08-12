.class Lcom/bytedance/embedapplog/ab;
.super Lcom/bytedance/embedapplog/u;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 19
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/embedapplog/u;-><init>(ZZ)V

    .line 20
    iput-object p1, p0, Lcom/bytedance/embedapplog/ab;->e:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 6

    .line 25
    iget-object v0, p0, Lcom/bytedance/embedapplog/ab;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 26
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 28
    sparse-switch v1, :sswitch_data_52

    .line 54
    const-string v2, "mdpi"

    goto :goto_25

    .line 51
    :sswitch_12
    nop

    .line 52
    const-string v2, "xxxhdpi"

    goto :goto_25

    .line 47
    :sswitch_16
    nop

    .line 48
    const-string v2, "xxhdpi"

    goto :goto_25

    .line 39
    :sswitch_1a
    nop

    .line 40
    const-string v2, "xhdpi"

    goto :goto_25

    .line 33
    :sswitch_1e
    nop

    .line 34
    const-string v2, "hdpi"

    goto :goto_25

    .line 30
    :sswitch_22
    nop

    .line 31
    const-string v2, "ldpi"

    .line 57
    :goto_25
    const-string v3, "density_dpi"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string v1, "display_density"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resolution"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const/4 p1, 0x1

    return p1

    nop

    :sswitch_data_52
    .sparse-switch
        0x78 -> :sswitch_22
        0xf0 -> :sswitch_1e
        0x104 -> :sswitch_1a
        0x118 -> :sswitch_1a
        0x12c -> :sswitch_1a
        0x140 -> :sswitch_1a
        0x154 -> :sswitch_16
        0x168 -> :sswitch_16
        0x190 -> :sswitch_16
        0x1a4 -> :sswitch_16
        0x1b8 -> :sswitch_16
        0x1e0 -> :sswitch_16
        0x230 -> :sswitch_12
        0x280 -> :sswitch_12
    .end sparse-switch
.end method
