.class public abstract Lcom/anythink/core/common/d/aa;
.super Ljava/lang/Object;


# static fields
.field public static final J:I = 0x1

.field public static final K:I = 0x2

.field public static final L:I = 0x3

.field public static final M:I = 0x4

.field public static final N:I = 0x5

.field public static final O:I = 0x6

.field public static final P:I = 0x7

.field public static final Q:I = 0x8

.field public static final R:I = 0x0

.field public static final S:I = 0x1

.field public static final T:I = 0x2

.field public static final U:I = 0x3

.field public static final V:I = 0x4

.field public static final W:I = 0x5

.field public static final X:Ljava/lang/String; = "0"

.field public static final Y:Ljava/lang/String; = "1"

.field public static final Z:Ljava/lang/String; = "2"

.field public static final aa:Ljava/lang/String; = "3"

.field public static final ab:Ljava/lang/String; = "4"


# instance fields
.field protected ac:Ljava/lang/String;

.field protected ad:Ljava/lang/String;

.field protected ae:Ljava/lang/String;

.field protected af:Ljava/lang/String;

.field public ag:Ljava/lang/String;

.field public ah:I

.field public ai:I

.field protected aj:Ljava/lang/String;

.field protected ak:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/common/d/aa;->af:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/anythink/core/common/d/aa;->ag:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .registers 2

    .line 73
    iput p1, p0, Lcom/anythink/core/common/d/aa;->ah:I

    .line 74
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/anythink/core/common/d/aa;->ag:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private b()I
    .registers 2

    .line 69
    iget v0, p0, Lcom/anythink/core/common/d/aa;->ah:I

    return v0
.end method

.method private b(I)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/anythink/core/common/d/aa;->ai:I

    .line 82
    return-void
.end method

.method private c()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/anythink/core/common/d/aa;->ai:I

    return v0
.end method


# virtual methods
.method public final C()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/anythink/core/common/d/aa;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public final D()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/anythink/core/common/d/aa;->ak:I

    return v0
.end method

.method public final E()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/anythink/core/common/d/aa;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/anythink/core/common/d/aa;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/anythink/core/common/d/aa;->ae:Ljava/lang/String;

    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/anythink/core/common/d/aa;->ae:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_52

    :cond_9
    goto :goto_3c

    :pswitch_a
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto :goto_3d

    :pswitch_14
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_3d

    :pswitch_1e
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_3d

    :pswitch_28
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_3d

    :pswitch_32
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_3d

    :goto_3c
    const/4 v0, -0x1

    :goto_3d
    packed-switch v0, :pswitch_data_60

    .line 147
    const-string v0, "none"

    return-object v0

    .line 145
    :pswitch_43
    const-string v0, "splash"

    return-object v0

    .line 143
    :pswitch_46
    const-string v0, "inter"

    return-object v0

    .line 141
    :pswitch_49
    const-string v0, "banner"

    return-object v0

    .line 139
    :pswitch_4c
    const-string v0, "reward"

    return-object v0

    .line 137
    :pswitch_4f
    const-string v0, "native"

    return-object v0

    :pswitch_data_52
    .packed-switch 0x30
        :pswitch_32
        :pswitch_28
        :pswitch_1e
        :pswitch_14
        :pswitch_a
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
    .end packed-switch
.end method

.method public final o(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/anythink/core/common/d/aa;->aj:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/anythink/core/common/d/aa;->af:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/anythink/core/common/d/aa;->ac:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public r(I)Lorg/json/JSONObject;
    .registers 5

    .line 155
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 157
    :try_start_5
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    const-string p1, "pl_id"

    iget-object v1, p0, Lcom/anythink/core/common/d/aa;->ac:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string p1, "req_id"

    iget-object v1, p0, Lcom/anythink/core/common/d/aa;->ad:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string p1, "format"

    iget-object v1, p0, Lcom/anythink/core/common/d/aa;->ae:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    const-string p1, "ps_id"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string p1, "sessionid"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/d/aa;->ac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string p1, "traffic_group_id"

    iget v1, p0, Lcom/anythink/core/common/d/aa;->ak:I

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_46} :catch_47

    .line 166
    goto :goto_4b

    .line 165
    :catch_47
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    :goto_4b
    return-object v0
.end method

.method public final r(Ljava/lang/String;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/anythink/core/common/d/aa;->ad:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public final s(I)V
    .registers 2

    .line 91
    iput p1, p0, Lcom/anythink/core/common/d/aa;->ak:I

    .line 92
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/anythink/core/common/d/aa;->ae:Ljava/lang/String;

    .line 152
    return-void
.end method
