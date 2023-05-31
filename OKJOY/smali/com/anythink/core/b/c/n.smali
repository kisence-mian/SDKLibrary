.class public abstract Lcom/anythink/core/b/c/n;
.super Ljava/lang/Object;


# static fields
.field public static final G:I = 0x1

.field public static final H:I = 0x2

.field public static final I:I = 0x3

.field public static final J:I = 0x4

.field public static final K:I = 0x5

.field public static final L:I = 0x6

.field public static final M:I = 0x0

.field public static final N:I = 0x1

.field public static final O:I = 0x2

.field public static final P:I = 0x3

.field public static final Q:I = 0x4

.field public static final R:Ljava/lang/String; = "0"

.field public static final S:Ljava/lang/String; = "1"

.field public static final T:Ljava/lang/String; = "2"

.field public static final U:Ljava/lang/String; = "3"

.field public static final V:Ljava/lang/String; = "4"


# instance fields
.field protected W:Ljava/lang/String;

.field protected X:Ljava/lang/String;

.field protected Y:Ljava/lang/String;

.field protected Z:Ljava/lang/String;

.field protected aa:Ljava/lang/String;

.field protected ab:Ljava/lang/String;

.field public ac:Ljava/lang/String;

.field public ad:I

.field public ae:I

.field protected af:Ljava/lang/String;

.field protected ag:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/b/c/n;->Z:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/anythink/core/b/c/n;->ac:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .registers 2

    .prologue
    .line 66
    iput p1, p0, Lcom/anythink/core/b/c/n;->ad:I

    .line 67
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/anythink/core/b/c/n;->ac:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private b()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/anythink/core/b/c/n;->ad:I

    return v0
.end method

.method private b(I)V
    .registers 2

    .prologue
    .line 74
    iput p1, p0, Lcom/anythink/core/b/c/n;->ae:I

    .line 75
    return-void
.end method

.method private c()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/anythink/core/b/c/n;->ae:I

    return v0
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/anythink/core/b/c/n;->af:Ljava/lang/String;

    return-object v0
.end method

.method public final C()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/anythink/core/b/c/n;->ag:I

    return v0
.end method

.method public final D()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/anythink/core/b/c/n;->W:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/anythink/core/b/c/n;->X:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/anythink/core/b/c/n;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .registers 4

    .prologue
    .line 128
    iget-object v1, p0, Lcom/anythink/core/b/c/n;->Y:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_52

    :cond_a
    :goto_a
    packed-switch v0, :pswitch_data_60

    .line 140
    const-string v0, "none"

    :goto_f
    return-object v0

    .line 128
    :pswitch_10
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    goto :goto_a

    :pswitch_1a
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    goto :goto_a

    :pswitch_24
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x2

    goto :goto_a

    :pswitch_2e
    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x3

    goto :goto_a

    :pswitch_38
    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x4

    goto :goto_a

    .line 130
    :pswitch_42
    const-string v0, "native"

    goto :goto_f

    .line 132
    :pswitch_45
    const-string v0, "reward"

    goto :goto_f

    .line 134
    :pswitch_48
    const-string v0, "banner"

    goto :goto_f

    .line 136
    :pswitch_4b
    const-string v0, "inter"

    goto :goto_f

    .line 138
    :pswitch_4e
    const-string v0, "splash"

    goto :goto_f

    .line 128
    nop

    :pswitch_data_52
    .packed-switch 0x30
        :pswitch_10
        :pswitch_1a
        :pswitch_24
        :pswitch_2e
        :pswitch_38
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
    .end packed-switch
.end method

.method public final m(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/anythink/core/b/c/n;->af:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/anythink/core/b/c/n;->Z:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/anythink/core/b/c/n;->W:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 120
    iput-object p1, p0, Lcom/anythink/core/b/c/n;->X:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public q(I)Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 148
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 150
    :try_start_5
    const-string v0, "type"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 151
    const-string v0, "pl_id"

    iget-object v2, p0, Lcom/anythink/core/b/c/n;->W:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v0, "req_id"

    iget-object v2, p0, Lcom/anythink/core/b/c/n;->X:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v0, "format"

    iget-object v2, p0, Lcom/anythink/core/b/c/n;->Y:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    const-string v0, "ps_id"

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/a/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v0, "sessionid"

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/b/c/n;->W:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/core/b/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v0, "traffic_group_id"

    iget v2, p0, Lcom/anythink/core/b/c/n;->ag:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_46} :catch_47

    .line 160
    :goto_46
    return-object v1

    .line 158
    :catch_47
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46
.end method

.method public final q(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/anythink/core/b/c/n;->Y:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public final r(I)V
    .registers 2

    .prologue
    .line 84
    iput p1, p0, Lcom/anythink/core/b/c/n;->ag:I

    .line 85
    return-void
.end method
