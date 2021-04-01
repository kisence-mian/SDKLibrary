.class public Lcom/JoyFramework/remote/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "https://api.keyihn.com"

.field public static final b:Ljava/lang/String; = "https://"

.field public static final c:Ljava/lang/String; = "."

.field public static final d:Ljava/lang/String; = "/Api/"

.field private static e:Ljava/lang/String;

.field private static f:Lcom/JoyFramework/remote/b;


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "api.keyihn.com"

    sput-object v0, Lcom/JoyFramework/remote/b;->e:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/JoyFramework/remote/b;->f:Lcom/JoyFramework/remote/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/remote/b;->g:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/JoyFramework/remote/b;->h:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/remote/b;->g:Ljava/util/List;

    .line 35
    iget-object v0, p0, Lcom/JoyFramework/remote/b;->g:Ljava/util/List;

    sget-object v1, Lcom/JoyFramework/remote/b;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public static a()Lcom/JoyFramework/remote/b;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/JoyFramework/remote/b;->f:Lcom/JoyFramework/remote/b;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Lcom/JoyFramework/remote/b;

    invoke-direct {v0}, Lcom/JoyFramework/remote/b;-><init>()V

    sput-object v0, Lcom/JoyFramework/remote/b;->f:Lcom/JoyFramework/remote/b;

    .line 42
    :cond_b
    sget-object v0, Lcom/JoyFramework/remote/b;->f:Lcom/JoyFramework/remote/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 54
    const-string v1, ""

    .line 55
    iget-object v0, p0, Lcom/JoyFramework/remote/b;->g:Ljava/util/List;

    iget v2, p0, Lcom/JoyFramework/remote/b;->h:I

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    packed-switch p1, :pswitch_data_172

    :pswitch_11
    move-object v0, v1

    .line 214
    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a5\u53e3 url   =====  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 215
    return-object v0

    .line 59
    :pswitch_29
    const-string v1, "/Api/Basic/Init"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 63
    :pswitch_30
    const-string v1, "/Api/Basic/Login"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 67
    :pswitch_37
    const-string v1, "/Api/Basic/FuseLogin"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 71
    :pswitch_3e
    const-string v1, "/Api/Basic/AccountRegister"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 75
    :pswitch_45
    const-string v1, "/Api/Basic/MobileRegister"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 79
    :pswitch_4c
    const-string v1, "/Api/General/RealName"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 84
    :pswitch_53
    const-string v1, "/Api/General/BindUser"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 89
    :pswitch_5a
    const-string v1, "/Api/General/BindMobile"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 93
    :pswitch_61
    const-string v1, "/Api/General/UnbindMobile"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 97
    :pswitch_68
    const-string v1, "/Api/General/MobileCode"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 102
    :pswitch_6f
    const-string v1, "/Api/General/MobilePassword"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 106
    :pswitch_76
    const-string v1, "/Api/General/AccountPassword"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 110
    :pswitch_7d
    const-string v1, "/Api/Pay/Order"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 114
    :pswitch_84
    const-string v1, "/Api/Pay/Log"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 118
    :pswitch_8b
    const-string v1, "/Api/Basic/Role"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 122
    :pswitch_92
    const-string v1, "/Api/Pay/AlipayNative"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 126
    :pswitch_9a
    const-string v1, "/Api/Pay/WeixinPayNative"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 130
    :pswitch_a2
    const-string v1, "/Api/Pay/PayNative"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 134
    :pswitch_aa
    const-string v1, "/Api/Pay/CheckUnionPayCard"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 138
    :pswitch_b2
    const-string v1, "/Api/Pay/AddUnionPayCard"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 142
    :pswitch_ba
    const-string v1, "/Api/Pay/DeleteUnionPayCard"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 146
    :pswitch_c2
    const-string v1, "/Api/Basic/CrashLog"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 150
    :pswitch_ca
    const-string v1, "/Api/Ajax/onlineReport"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 153
    :pswitch_d2
    const-string v1, "/Api/Basic/CodeLogin"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 156
    :pswitch_da
    const-string v1, "/Api/General/UserReal"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 159
    :pswitch_e2
    const-string v1, "/Api/General/FindAccount"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 162
    :pswitch_ea
    const-string v1, "/Api/Basic/FastLogin"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 165
    :pswitch_f2
    const-string v1, "/Api/Gift/GetList"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 168
    :pswitch_fa
    const-string v1, "/Api/Gift/GetOwnGift"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 171
    :pswitch_102
    const-string v1, "/Api/Gift/ShowGift"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 174
    :pswitch_10a
    const-string v1, "/Api/Gift/GetGift"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 177
    :pswitch_112
    const-string v1, "/Api/Gift/GetServerList"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 180
    :pswitch_11a
    const-string v1, "/Api/Gift/GetServerRole"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 183
    :pswitch_122
    const-string v1, "/Api/Basic/DownloadUrl"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 186
    :pswitch_12a
    const-string v1, "/Api/Pay/CheckOrder"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 189
    :pswitch_132
    const-string v1, "/Api/Basic/GetShare"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 192
    :pswitch_13a
    const-string v1, "/Api/Basic/GetPublicAccountCode"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 195
    :pswitch_142
    const-string v1, "/Api/Basic/ShareLog"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 198
    :pswitch_14a
    const-string v1, "/Api/Basic/AgentParam"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 201
    :pswitch_152
    const-string v1, "/Api/Basic/showInfo"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 204
    :pswitch_15a
    const-string v1, "/Api/Basic/AgentAdv "

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 207
    :pswitch_162
    const-string v1, "/Api/Ajax/getReportLog"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 210
    :pswitch_16a
    const-string v1, "/Api/Record/adVideo"

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/remote/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 57
    :pswitch_data_172
    .packed-switch 0x1
        :pswitch_29
        :pswitch_30
        :pswitch_37
        :pswitch_3e
        :pswitch_45
        :pswitch_4c
        :pswitch_53
        :pswitch_5a
        :pswitch_61
        :pswitch_68
        :pswitch_6f
        :pswitch_76
        :pswitch_7d
        :pswitch_84
        :pswitch_8b
        :pswitch_92
        :pswitch_9a
        :pswitch_a2
        :pswitch_aa
        :pswitch_b2
        :pswitch_11
        :pswitch_ba
        :pswitch_c2
        :pswitch_ca
        :pswitch_d2
        :pswitch_da
        :pswitch_e2
        :pswitch_ea
        :pswitch_f2
        :pswitch_fa
        :pswitch_102
        :pswitch_10a
        :pswitch_112
        :pswitch_11a
        :pswitch_122
        :pswitch_12a
        :pswitch_132
        :pswitch_13a
        :pswitch_142
        :pswitch_14a
        :pswitch_152
        :pswitch_15a
        :pswitch_162
        :pswitch_16a
    .end packed-switch
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 246
    iget-object v0, p0, Lcom/JoyFramework/remote/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    iget-object v0, p0, Lcom/JoyFramework/remote/b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/JoyFramework/remote/b;->h:I

    .line 250
    :cond_15
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 236
    iget v0, p0, Lcom/JoyFramework/remote/b;->h:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/JoyFramework/remote/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_15

    .line 237
    iget v0, p0, Lcom/JoyFramework/remote/b;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/JoyFramework/remote/b;->h:I

    .line 241
    :goto_14
    return-void

    .line 239
    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Lcom/JoyFramework/remote/b;->h:I

    goto :goto_14
.end method
