.class public Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:J

.field public D:J

.field public E:J

.field public F:J

.field public G:J

.field public H:J

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:J

.field public N:Z

.field public O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public P:I

.field public Q:I

.field public R:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public S:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public T:[B

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:J

.field public s:Ljava/lang/String;

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:[B

.field public z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 210
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean$1;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean$1;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    .line 30
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    .line 32
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    .line 33
    const-string v3, ""

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 34
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 35
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 36
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 37
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 39
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    .line 40
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->k:Z

    .line 41
    iput v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    .line 42
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 43
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 46
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 47
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    .line 48
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    .line 49
    iput v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    .line 50
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 51
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    .line 52
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 53
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    .line 54
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    .line 55
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    .line 58
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 59
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    .line 60
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    .line 61
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    .line 62
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    .line 63
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    .line 64
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    .line 65
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    .line 66
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    .line 69
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->W:Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    .line 71
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    .line 72
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    .line 74
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:J

    .line 75
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Z

    .line 76
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    .line 80
    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:I

    .line 81
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 82
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    .line 84
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:[B

    .line 86
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:Ljava/lang/String;

    .line 88
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    .line 30
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    .line 32
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    .line 33
    const-string v3, ""

    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 34
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 35
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 36
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 37
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 39
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    .line 40
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->k:Z

    .line 41
    iput v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    .line 42
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 43
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 46
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 47
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    .line 48
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    .line 49
    iput v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    .line 50
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 51
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    .line 52
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 53
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    .line 54
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    .line 55
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    .line 58
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 59
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    .line 60
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    .line 61
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    .line 62
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    .line 63
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    .line 64
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    .line 65
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    .line 66
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    .line 69
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->W:Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    .line 71
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    .line 72
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    .line 74
    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:J

    .line 75
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Z

    .line 76
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    .line 80
    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:I

    .line 81
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 82
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    .line 84
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:[B

    .line 86
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:Ljava/lang/String;

    .line 88
    iput-object v4, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_89

    move v0, v1

    goto :goto_8a

    :cond_89
    move v0, v2

    :goto_8a
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_a6

    move v0, v1

    goto :goto_a7

    :cond_a6
    move v0, v2

    :goto_a7
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_b1

    move v0, v1

    goto :goto_b2

    :cond_b1
    move v0, v2

    :goto_b2
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->k:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 119
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->W:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:J

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_15d

    move v2, v1

    :cond_15d
    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Z

    .line 135
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    .line 136
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 137
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:I

    .line 141
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 142
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:[B

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    .line 149
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 6

    .line 17
    check-cast p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    if-eqz p1, :cond_15

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iget-wide v2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_15

    if-gez p1, :cond_13

    const/4 p1, -0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    const/4 p1, 0x1

    return p1
.end method

.method public describeContents()I
    .registers 2

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 158
    iget p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 161
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->k:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 166
    iget p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/z;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 179
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 187
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->W:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 193
    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 194
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/z;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 195
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 196
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 198
    iget p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/z;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 201
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/z;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 202
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 204
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 205
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    return-void
.end method
