.class public abstract Lcom/anythink/core/common/d/u;
.super Lcom/anythink/core/common/d/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/d/h<",
        "Lcom/anythink/core/common/d/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final J:I = 0x1

.field public static final K:I = 0x2

.field public static final L:I = 0x3

.field public static final M:I = 0x4

.field public static final N:I = 0x5

.field public static final O:I = 0x6


# instance fields
.field F:J

.field G:Ljava/lang/String;

.field H:Ljava/lang/String;

.field I:I

.field P:Ljava/lang/String;

.field Q:Ljava/lang/String;

.field R:Lcom/anythink/core/common/d/v;

.field S:Lcom/anythink/core/common/d/w;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/anythink/core/common/d/h;-><init>()V

    return-void
.end method

.method private A()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/anythink/core/common/d/u;->P:Ljava/lang/String;

    return-object v0
.end method

.method private B()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/anythink/core/common/d/u;->Q:Ljava/lang/String;

    return-object v0
.end method

.method private a()J
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/anythink/core/common/d/u;->F:J

    return-wide v0
.end method

.method private b(Lcom/anythink/core/common/d/v;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/d/v;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    nop

    .line 112
    invoke-virtual {p1}, Lcom/anythink/core/common/d/v;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_52

    .line 113
    iget-object v1, p0, Lcom/anythink/core/common/d/u;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 114
    iget-object v1, p0, Lcom/anythink/core/common/d/u;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_25
    iget-object v1, p0, Lcom/anythink/core/common/d/u;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 118
    iget-object v1, p0, Lcom/anythink/core/common/d/u;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_32
    iget-object v1, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 122
    iget-object v1, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_42

    .line 124
    :cond_41
    move v1, v3

    .line 127
    :goto_42
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->m:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 128
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->m:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 130
    :cond_50
    move v1, v3

    goto :goto_53

    .line 112
    :cond_52
    move v1, v2

    .line 134
    :goto_53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/common/d/v;->j()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 135
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_79

    .line 136
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_79
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->k:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_86

    .line 140
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->k:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_86
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_94

    .line 144
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_95

    .line 146
    :cond_94
    move v1, v3

    .line 149
    :goto_95
    invoke-virtual {p0}, Lcom/anythink/core/common/d/u;->t()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 150
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->m:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_a0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/common/d/v;->j()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_114

    .line 157
    nop

    .line 1078
    iget v4, p0, Lcom/anythink/core/common/d/u;->I:I

    .line 157
    packed-switch v4, :pswitch_data_158

    goto :goto_107

    .line 166
    :pswitch_c0
    invoke-virtual {p1}, Lcom/anythink/core/common/d/v;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "320x50"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 167
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_da

    .line 168
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_107

    .line 170
    :cond_da
    move v1, v3

    goto :goto_107

    .line 173
    :cond_dc
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ea

    .line 174
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_107

    .line 176
    :cond_ea
    nop

    .line 179
    move v1, v3

    goto :goto_107

    .line 182
    :pswitch_ed
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->P:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_107

    .line 185
    move v1, v3

    goto :goto_107

    .line 159
    :pswitch_f7
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_105

    .line 160
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_107

    .line 162
    :cond_105
    nop

    .line 164
    move v1, v3

    .line 192
    :cond_107
    :goto_107
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->k:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_114

    .line 193
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->k:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_114
    invoke-virtual {p1}, Lcom/anythink/core/common/d/v;->j()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "4"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_152

    .line 204
    nop

    .line 2078
    iget p1, p0, Lcom/anythink/core/common/d/u;->I:I

    .line 204
    if-eq v2, p1, :cond_136

    .line 205
    iget-object p1, p0, Lcom/anythink/core/common/d/u;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_136

    .line 206
    iget-object p1, p0, Lcom/anythink/core/common/d/u;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_136
    iget-object p1, p0, Lcom/anythink/core/common/d/u;->k:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_143

    .line 211
    iget-object p1, p0, Lcom/anythink/core/common/d/u;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_143
    iget-object p1, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_151

    .line 215
    iget-object p1, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_152

    .line 217
    :cond_151
    goto :goto_153

    .line 223
    :cond_152
    :goto_152
    move v3, v1

    :goto_153
    if-eqz v3, :cond_156

    .line 224
    return-object v0

    .line 226
    :cond_156
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_f7
        :pswitch_ed
        :pswitch_c0
        :pswitch_ed
    .end packed-switch
.end method

.method private v()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/anythink/core/common/d/u;->G:Ljava/lang/String;

    return-object v0
.end method

.method private w()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/anythink/core/common/d/u;->H:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/anythink/core/common/d/j;)Ljava/util/List;
    .registers 8

    .line 17
    check-cast p1, Lcom/anythink/core/common/d/v;

    .line 2109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2110
    nop

    .line 2112
    invoke-virtual {p1}, Lcom/anythink/core/common/d/v;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_54

    .line 2113
    iget-object v1, p0, Lcom/anythink/core/common/d/u;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 2114
    iget-object v1, p0, Lcom/anythink/core/common/d/u;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2117
    :cond_27
    iget-object v1, p0, Lcom/anythink/core/common/d/u;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 2118
    iget-object v1, p0, Lcom/anythink/core/common/d/u;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2121
    :cond_34
    iget-object v1, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 2122
    iget-object v1, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_44

    .line 2124
    :cond_43
    move v1, v3

    .line 2127
    :goto_44
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->m:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 2128
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->m:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 2130
    :cond_52
    move v1, v3

    goto :goto_55

    .line 2112
    :cond_54
    move v1, v2

    .line 2134
    :goto_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/common/d/v;->j()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 2135
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 2136
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2139
    :cond_7b
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->k:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_88

    .line 2140
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->k:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2143
    :cond_88
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_96

    .line 2144
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 2146
    :cond_96
    move v1, v3

    .line 2149
    :goto_97
    invoke-virtual {p0}, Lcom/anythink/core/common/d/u;->t()Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 2150
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->m:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2155
    :cond_a2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/common/d/v;->j()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_116

    .line 2157
    nop

    .line 3078
    iget v4, p0, Lcom/anythink/core/common/d/u;->I:I

    .line 2157
    packed-switch v4, :pswitch_data_15a

    goto :goto_109

    .line 2166
    :pswitch_c2
    invoke-virtual {p1}, Lcom/anythink/core/common/d/v;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "320x50"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_de

    .line 2167
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_dc

    .line 2168
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_109

    .line 2170
    :cond_dc
    move v1, v3

    goto :goto_109

    .line 2173
    :cond_de
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ec

    .line 2174
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_109

    .line 2176
    :cond_ec
    nop

    .line 2179
    move v1, v3

    goto :goto_109

    .line 2182
    :pswitch_ef
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->P:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_109

    .line 2185
    move v1, v3

    goto :goto_109

    .line 2159
    :pswitch_f9
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_107

    .line 2160
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_109

    .line 2162
    :cond_107
    nop

    .line 2164
    move v1, v3

    .line 2192
    :cond_109
    :goto_109
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->k:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_116

    .line 2193
    iget-object v4, p0, Lcom/anythink/core/common/d/u;->k:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2202
    :cond_116
    invoke-virtual {p1}, Lcom/anythink/core/common/d/v;->j()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "4"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_154

    .line 2204
    nop

    .line 4078
    iget p1, p0, Lcom/anythink/core/common/d/u;->I:I

    .line 2204
    if-eq v2, p1, :cond_138

    .line 2205
    iget-object p1, p0, Lcom/anythink/core/common/d/u;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_138

    .line 2206
    iget-object p1, p0, Lcom/anythink/core/common/d/u;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2210
    :cond_138
    iget-object p1, p0, Lcom/anythink/core/common/d/u;->k:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_145

    .line 2211
    iget-object p1, p0, Lcom/anythink/core/common/d/u;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2214
    :cond_145
    iget-object p1, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_153

    .line 2215
    iget-object p1, p0, Lcom/anythink/core/common/d/u;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_154

    .line 2217
    :cond_153
    goto :goto_155

    .line 2223
    :cond_154
    :goto_154
    move v3, v1

    :goto_155
    if-eqz v3, :cond_158

    .line 2224
    return-object v0

    .line 2226
    :cond_158
    const/4 p1, 0x0

    .line 17
    return-object p1

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_f9
        :pswitch_ef
        :pswitch_c2
        :pswitch_ef
    .end packed-switch
.end method

.method public final a(Lcom/anythink/core/common/d/v;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/anythink/core/common/d/u;->R:Lcom/anythink/core/common/d/v;

    .line 43
    return-void
.end method

.method public final a(Lcom/anythink/core/common/d/w;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/anythink/core/common/d/u;->S:Lcom/anythink/core/common/d/w;

    .line 51
    return-void
.end method

.method public final c(J)V
    .registers 3

    .line 58
    iput-wide p1, p0, Lcom/anythink/core/common/d/u;->F:J

    .line 59
    return-void
.end method

.method public final g(I)V
    .registers 2

    .line 82
    iput p1, p0, Lcom/anythink/core/common/d/u;->I:I

    .line 83
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/anythink/core/common/d/u;->G:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/anythink/core/common/d/u;->H:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/anythink/core/common/d/u;->P:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/anythink/core/common/d/u;->Q:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public final x()Lcom/anythink/core/common/d/v;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/anythink/core/common/d/u;->R:Lcom/anythink/core/common/d/v;

    return-object v0
.end method

.method public final y()Lcom/anythink/core/common/d/w;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/anythink/core/common/d/u;->S:Lcom/anythink/core/common/d/w;

    return-object v0
.end method

.method public final z()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/anythink/core/common/d/u;->I:I

    return v0
.end method
