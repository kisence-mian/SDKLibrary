.class public Lcom/kwai/filedownloader/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/f/c$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;J)I
    .registers 6

    const-wide/32 p1, 0x100000

    cmp-long p1, p4, p1

    if-gez p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const-wide/32 p1, 0x500000

    cmp-long p1, p4, p1

    if-gez p1, :cond_12

    const/4 p1, 0x2

    return p1

    :cond_12
    const-wide/32 p1, 0x3200000

    cmp-long p1, p4, p1

    if-gez p1, :cond_1b

    const/4 p1, 0x3

    return p1

    :cond_1b
    const-wide/32 p1, 0x6400000

    cmp-long p1, p4, p1

    if-gez p1, :cond_24

    const/4 p1, 0x4

    return p1

    :cond_24
    const/4 p1, 0x5

    return p1
.end method
