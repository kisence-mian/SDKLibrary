.class public final Lcom/anythink/myoffer/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/anythink/myoffer/c/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Lcom/anythink/myoffer/c/c$1;

    invoke-direct {v0}, Lcom/anythink/myoffer/c/c$1;-><init>()V

    sput-object v0, Lcom/anythink/myoffer/c/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/c/c;->a:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/c/c;->b:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/c/c;->c:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/c/c;->d:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/c/c;->e:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/c/c;->f:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/c/c;->g:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/myoffer/c/c;->h:J

    .line 34
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/anythink/myoffer/c/c;
    .registers 5

    .prologue
    .line 130
    new-instance v1, Lcom/anythink/myoffer/c/c;

    invoke-direct {v1}, Lcom/anythink/myoffer/c/c;-><init>()V

    .line 131
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 133
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    const-string v2, "f_t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1070
    iput v2, v1, Lcom/anythink/myoffer/c/c;->a:I

    .line 136
    const-string v2, "v_c"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1078
    iput v2, v1, Lcom/anythink/myoffer/c/c;->b:I

    .line 137
    const-string v2, "s_b_t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1086
    iput v2, v1, Lcom/anythink/myoffer/c/c;->c:I

    .line 138
    const-string v2, "e_c_a"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1094
    iput v2, v1, Lcom/anythink/myoffer/c/c;->d:I

    .line 139
    const-string v2, "v_m"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1102
    iput v2, v1, Lcom/anythink/myoffer/c/c;->e:I

    .line 140
    const-string v2, "s_c_t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1110
    iput v2, v1, Lcom/anythink/myoffer/c/c;->f:I

    .line 141
    const-string v2, "m_t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1118
    iput v2, v1, Lcom/anythink/myoffer/c/c;->g:I

    .line 142
    const-string v2, "o_c_t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1126
    iput-wide v2, v1, Lcom/anythink/myoffer/c/c;->h:J
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_50} :catch_51

    .line 147
    :cond_50
    :goto_50
    return-object v1

    .line 144
    :catch_51
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_50
.end method

.method private a(I)V
    .registers 2

    .prologue
    .line 70
    iput p1, p0, Lcom/anythink/myoffer/c/c;->a:I

    .line 71
    return-void
.end method

.method private a(J)V
    .registers 4

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/anythink/myoffer/c/c;->h:J

    .line 127
    return-void
.end method

.method private b(I)V
    .registers 2

    .prologue
    .line 78
    iput p1, p0, Lcom/anythink/myoffer/c/c;->b:I

    .line 79
    return-void
.end method

.method private c(I)V
    .registers 2

    .prologue
    .line 86
    iput p1, p0, Lcom/anythink/myoffer/c/c;->c:I

    .line 87
    return-void
.end method

.method private d(I)V
    .registers 2

    .prologue
    .line 94
    iput p1, p0, Lcom/anythink/myoffer/c/c;->d:I

    .line 95
    return-void
.end method

.method private e(I)V
    .registers 2

    .prologue
    .line 102
    iput p1, p0, Lcom/anythink/myoffer/c/c;->e:I

    .line 103
    return-void
.end method

.method private f(I)V
    .registers 2

    .prologue
    .line 110
    iput p1, p0, Lcom/anythink/myoffer/c/c;->f:I

    .line 111
    return-void
.end method

.method private g(I)V
    .registers 2

    .prologue
    .line 118
    iput p1, p0, Lcom/anythink/myoffer/c/c;->g:I

    .line 119
    return-void
.end method

.method private h()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/anythink/myoffer/c/c;->a:I

    return v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/anythink/myoffer/c/c;->b:I

    return v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/anythink/myoffer/c/c;->c:I

    return v0
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/anythink/myoffer/c/c;->d:I

    return v0
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/anythink/myoffer/c/c;->e:I

    return v0
.end method

.method public final describeContents()I
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/anythink/myoffer/c/c;->f:I

    return v0
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/anythink/myoffer/c/c;->g:I

    return v0
.end method

.method public final g()J
    .registers 3

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/anythink/myoffer/c/c;->h:J

    return-wide v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 38
    iget v0, p0, Lcom/anythink/myoffer/c/c;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lcom/anythink/myoffer/c/c;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/anythink/myoffer/c/c;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/anythink/myoffer/c/c;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Lcom/anythink/myoffer/c/c;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lcom/anythink/myoffer/c/c;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Lcom/anythink/myoffer/c/c;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-wide v0, p0, Lcom/anythink/myoffer/c/c;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    return-void
.end method
