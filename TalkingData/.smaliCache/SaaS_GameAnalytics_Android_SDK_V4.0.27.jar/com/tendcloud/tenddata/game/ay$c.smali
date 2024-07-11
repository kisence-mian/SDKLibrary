.class public Lcom/tendcloud/tenddata/game/ay$c;
.super Lcom/tendcloud/tenddata/game/ay;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private fields:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 129
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/ay;-><init>(Landroid/os/Parcel;)V

    .line 115
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ay$c;->fields:[Ljava/lang/String;

    .line 131
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ay$c;->fields:[Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    .line 136
    goto :goto_10

    .line 132
    :catchall_f
    move-exception p1

    .line 137
    :goto_10
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 118
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/ay;-><init>(Ljava/lang/String;)V

    .line 115
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ay$c;->fields:[Ljava/lang/String;

    .line 120
    :try_start_8
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/ay$c;->content:Ljava/lang/String;

    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ay$c;->fields:[Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_13

    .line 125
    goto :goto_14

    .line 121
    :catchall_13
    move-exception p1

    .line 126
    :goto_14
    return-void
.end method

.method public static get(I)Lcom/tendcloud/tenddata/game/ay$c;
    .registers 5

    .line 109
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/ay$c;

    const-string v1, "/proc/%d/stat"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/game/ay$c;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object v0

    .line 110
    :catchall_16
    move-exception p0

    .line 111
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getComm()Ljava/lang/String;
    .registers 4

    .line 154
    const-string v0, ""

    :try_start_2
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ay$c;->fields:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "("

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    return-object v0

    .line 155
    :catchall_14
    move-exception v1

    .line 158
    return-object v0
.end method

.method public startTime()J
    .registers 3

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ay$c;->fields:[Ljava/lang/String;

    const/16 v1, 0x15

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-wide v0

    .line 141
    :catchall_b
    move-exception v0

    .line 146
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public state()C
    .registers 4

    .line 181
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ay$c;->fields:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    return v0

    .line 182
    :catchall_b
    move-exception v1

    .line 183
    return v0
.end method
