.class public Lcom/kwai/filedownloader/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/kwai/filedownloader/d/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final g:Ljava/util/concurrent/atomic/AtomicLong;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/kwai/filedownloader/d/c$1;

    invoke-direct {v0}, Lcom/kwai/filedownloader/d/c$1;-><init>()V

    sput-object v0, Lcom/kwai/filedownloader/d/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/d/c;->g:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/d/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kwai/filedownloader/d/c;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/d/c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/d/c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    move v0, v1

    goto :goto_20

    :cond_1f
    move v0, v2

    :goto_20
    iput-boolean v0, p0, Lcom/kwai/filedownloader/d/c;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/d/c;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kwai/filedownloader/d/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/kwai/filedownloader/d/c;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/kwai/filedownloader/d/c;->h:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/d/c;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/d/c;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kwai/filedownloader/d/c;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v1, v2

    :goto_5e
    iput-boolean v1, p0, Lcom/kwai/filedownloader/d/c;->l:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/d/c;->a:I

    return v0
.end method

.method public a(B)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/d/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/kwai/filedownloader/d/c;->a:I

    return-void
.end method

.method public a(J)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/d/c;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/d/c;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 3

    iput-object p1, p0, Lcom/kwai/filedownloader/d/c;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/kwai/filedownloader/d/c;->d:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/kwai/filedownloader/d/c;->k:I

    return-void
.end method

.method public b(J)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/d/c;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/d/c;->j:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(J)V
    .registers 5

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lcom/kwai/filedownloader/d/c;->l:Z

    iput-wide p1, p0, Lcom/kwai/filedownloader/d/c;->h:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/d/c;->i:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->l()Z

    move-result v1

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/d/c;->e:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/f/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()B
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public g()J
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/d/c;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/d/c;->h:J

    return-wide v0
.end method

.method public i()Z
    .registers 5

    iget-wide v0, p0, Lcom/kwai/filedownloader/d/c;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/d/c;->d:Z

    return v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/d/c;->k:I

    return v0
.end method

.method public o()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/kwai/filedownloader/d/c;->k:I

    return-void
.end method

.method public p()Landroid/content/ContentValues;
    .registers 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sofar"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->h()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "total"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "errMsg"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "etag"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "connectionCount"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "pathAsDirectory"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->l()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8c

    invoke-virtual {p0}, Lcom/kwai/filedownloader/d/c;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    return-object v0
.end method

.method public q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/d/c;->l:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/kwai/filedownloader/d/c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/kwai/filedownloader/d/c;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/kwai/filedownloader/d/c;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/kwai/filedownloader/d/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/kwai/filedownloader/d/c;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/kwai/filedownloader/d/c;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/kwai/filedownloader/d/c;->j:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "id[%d], url[%s], path[%s], status[%d], sofar[%s], total[%d], etag[%s], %s"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget p2, p0, Lcom/kwai/filedownloader/d/c;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/kwai/filedownloader/d/c;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kwai/filedownloader/d/c;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/kwai/filedownloader/d/c;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/kwai/filedownloader/d/c;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kwai/filedownloader/d/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/kwai/filedownloader/d/c;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/kwai/filedownloader/d/c;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/kwai/filedownloader/d/c;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kwai/filedownloader/d/c;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/kwai/filedownloader/d/c;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/kwai/filedownloader/d/c;->l:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
