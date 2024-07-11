.class public final Lcom/anythink/core/common/d/v;
.super Lcom/anythink/core/common/d/j;


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/anythink/core/common/d/j;-><init>()V

    .line 26
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/anythink/core/common/d/v;
    .registers 5

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 62
    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_8
    new-instance v0, Lcom/anythink/core/common/d/v;

    invoke-direct {v0}, Lcom/anythink/core/common/d/v;-><init>()V

    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 67
    :try_start_13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    const-string p0, "f_t"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/v;->h(I)V

    .line 71
    const-string p0, "v_c"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    .line 72
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_ac

    goto :goto_31

    .line 77
    :pswitch_2d
    move p0, v2

    goto :goto_31

    .line 74
    :pswitch_2f
    nop

    .line 75
    move p0, v3

    .line 80
    :goto_31
    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/v;->i(I)V

    .line 82
    const-string p0, "s_b_t"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/v;->j(I)V

    .line 85
    const-string p0, "e_c_a"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    .line 86
    packed-switch p0, :pswitch_data_b4

    goto :goto_4e

    .line 94
    :pswitch_47
    const/4 p0, 0x2

    goto :goto_4e

    .line 91
    :pswitch_49
    nop

    .line 92
    move p0, v2

    goto :goto_4e

    .line 88
    :pswitch_4c
    nop

    .line 89
    move p0, v3

    .line 97
    :goto_4e
    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/v;->k(I)V

    .line 100
    const-string p0, "ak_cfm"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    .line 101
    packed-switch p0, :pswitch_data_be

    goto :goto_5f

    .line 106
    :pswitch_5b
    move p0, v2

    goto :goto_5f

    .line 103
    :pswitch_5d
    nop

    .line 104
    move p0, v3

    .line 109
    :goto_5f
    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/v;->d(I)V

    .line 111
    const-string p0, "m_t"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/v;->c(I)V

    .line 120
    const-string p0, "cm"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    .line 121
    packed-switch p0, :pswitch_data_c6

    move v2, p0

    goto :goto_79

    .line 126
    :pswitch_76
    goto :goto_79

    .line 123
    :pswitch_77
    nop

    .line 124
    move v2, v3

    .line 129
    :goto_79
    nop

    .line 1041
    iput v2, v0, Lcom/anythink/core/common/d/v;->e:I

    .line 131
    const-string p0, "ipua"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    .line 1049
    iput p0, v0, Lcom/anythink/core/common/d/v;->f:I

    .line 132
    const-string p0, "clua"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    .line 1057
    iput p0, v0, Lcom/anythink/core/common/d/v;->g:I

    .line 133
    const-string p0, "dp_cm"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/v;->b(I)V

    .line 134
    const-string p0, "l_o_num"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    .line 2033
    iput p0, v0, Lcom/anythink/core/common/d/v;->h:I

    .line 135
    const-string p0, "ld_t"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/v;->a(I)V
    :try_end_a6
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_a6} :catch_a7

    .line 138
    goto :goto_ab

    .line 137
    :catch_a7
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 140
    :cond_ab
    :goto_ab
    return-object v0

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2d
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_49
        :pswitch_47
    .end packed-switch

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_5b
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_77
        :pswitch_76
    .end packed-switch
.end method

.method private n(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/anythink/core/common/d/v;->h:I

    .line 34
    return-void
.end method

.method private o(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/anythink/core/common/d/v;->e:I

    .line 42
    return-void
.end method

.method private p(I)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/anythink/core/common/d/v;->f:I

    .line 50
    return-void
.end method

.method private q(I)V
    .registers 2

    .line 57
    iput p1, p0, Lcom/anythink/core/common/d/v;->g:I

    .line 58
    return-void
.end method


# virtual methods
.method public final q()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/anythink/core/common/d/v;->h:I

    return v0
.end method

.method public final r()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/anythink/core/common/d/v;->e:I

    return v0
.end method

.method public final s()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/anythink/core/common/d/v;->f:I

    return v0
.end method

.method public final t()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/anythink/core/common/d/v;->g:I

    return v0
.end method
