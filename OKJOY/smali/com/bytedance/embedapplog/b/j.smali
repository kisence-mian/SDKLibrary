.class Lcom/bytedance/embedapplog/b/j;
.super Lcom/bytedance/embedapplog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 19
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/embedapplog/b/c;-><init>(ZZ)V

    .line 20
    iput-object p1, p0, Lcom/bytedance/embedapplog/b/j;->e:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 6

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/j;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 26
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 28
    sparse-switch v2, :sswitch_data_4c

    .line 54
    const-string v0, "mdpi"

    .line 57
    :goto_11
    const-string v3, "density_dpi"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string v2, "display_density"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v0, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const/4 v0, 0x1

    return v0

    .line 30
    :sswitch_3d
    const-string v0, "ldpi"

    goto :goto_11

    .line 33
    :sswitch_40
    const-string v0, "hdpi"

    goto :goto_11

    .line 39
    :sswitch_43
    const-string v0, "xhdpi"

    goto :goto_11

    .line 47
    :sswitch_46
    const-string v0, "xxhdpi"

    goto :goto_11

    .line 51
    :sswitch_49
    const-string v0, "xxxhdpi"

    goto :goto_11

    .line 28
    :sswitch_data_4c
    .sparse-switch
        0x78 -> :sswitch_3d
        0xf0 -> :sswitch_40
        0x104 -> :sswitch_43
        0x118 -> :sswitch_43
        0x12c -> :sswitch_43
        0x140 -> :sswitch_43
        0x154 -> :sswitch_46
        0x168 -> :sswitch_46
        0x190 -> :sswitch_46
        0x1a4 -> :sswitch_46
        0x1b8 -> :sswitch_46
        0x1e0 -> :sswitch_46
        0x230 -> :sswitch_49
        0x280 -> :sswitch_49
    .end sparse-switch
.end method
