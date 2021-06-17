.class public final Lcom/tapjoy/internal/it;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/iu;
.implements Lcom/tapjoy/internal/iv;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final c:[B


# instance fields
.field a:Lcom/tapjoy/internal/ja;

.field b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/tapjoy/internal/it;->c:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private a([B)V
    .registers 11

    .line 766
    const/4 v0, 0x0

    .line 767
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_4a

    .line 768
    array-length v1, p1

    sub-int/2addr v1, v0

    .line 2775
    array-length v2, p1

    int-to-long v3, v2

    int-to-long v5, v0

    int-to-long v7, v1

    invoke-static/range {v3 .. v8}, Lcom/tapjoy/internal/jg;->a(JJJ)V

    .line 2777
    iget-object v2, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 2778
    const/4 v3, -0x1

    if-nez v2, :cond_14

    const/4 v1, -0x1

    goto :goto_3f

    .line 2779
    :cond_14
    iget v4, v2, Lcom/tapjoy/internal/ja;->c:I

    iget v5, v2, Lcom/tapjoy/internal/ja;->b:I

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2780
    iget-object v4, v2, Lcom/tapjoy/internal/ja;->a:[B

    iget v5, v2, Lcom/tapjoy/internal/ja;->b:I

    invoke-static {v4, v5, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2782
    iget v4, v2, Lcom/tapjoy/internal/ja;->b:I

    add-int/2addr v4, v1

    iput v4, v2, Lcom/tapjoy/internal/ja;->b:I

    .line 2783
    iget-wide v4, p0, Lcom/tapjoy/internal/it;->b:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tapjoy/internal/it;->b:J

    .line 2785
    iget v4, v2, Lcom/tapjoy/internal/ja;->b:I

    iget v5, v2, Lcom/tapjoy/internal/ja;->c:I

    if-ne v4, v5, :cond_3e

    .line 2786
    invoke-virtual {v2}, Lcom/tapjoy/internal/ja;->a()Lcom/tapjoy/internal/ja;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 2787
    invoke-static {v2}, Lcom/tapjoy/internal/jb;->a(Lcom/tapjoy/internal/ja;)V

    .line 2790
    :cond_3e
    nop

    .line 768
    :goto_3f
    nop

    .line 769
    if-eq v1, v3, :cond_44

    .line 770
    add-int/2addr v0, v1

    .line 771
    goto :goto_1

    .line 769
    :cond_44
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 772
    :cond_4a
    return-void
.end method

.method private g(J)[B
    .registers 9

    .line 751
    iget-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/jg;->a(JJJ)V

    .line 752
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_16

    .line 756
    long-to-int p2, p1

    new-array p1, p2, [B

    .line 757
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/it;->a([B)V

    .line 758
    return-object p1

    .line 753
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(I)Lcom/tapjoy/internal/it;
    .registers 6

    .line 1009
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/it;->c(I)Lcom/tapjoy/internal/ja;

    move-result-object v0

    .line 1010
    iget-object v1, v0, Lcom/tapjoy/internal/ja;->a:[B

    iget v2, v0, Lcom/tapjoy/internal/ja;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/tapjoy/internal/ja;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 1011
    iget-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    .line 1012
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/iw;)Lcom/tapjoy/internal/it;
    .registers 3

    .line 824
    if-eqz p1, :cond_6

    .line 825
    invoke-virtual {p1, p0}, Lcom/tapjoy/internal/iw;->a(Lcom/tapjoy/internal/it;)V

    .line 826
    return-object p0

    .line 824
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/it;
    .registers 12

    .line 830
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2834
    if-eqz p1, :cond_114

    .line 2836
    if-ltz v0, :cond_f9

    .line 2839
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_d6

    .line 2845
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_d4

    .line 2846
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2848
    const/16 v4, 0x80

    if-ge v3, v4, :cond_51

    .line 2849
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/it;->c(I)Lcom/tapjoy/internal/ja;

    move-result-object v5

    .line 2850
    iget-object v6, v5, Lcom/tapjoy/internal/ja;->a:[B

    .line 2851
    iget v7, v5, Lcom/tapjoy/internal/ja;->c:I

    sub-int/2addr v7, v2

    .line 2852
    rsub-int v8, v7, 0x2000

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2855
    add-int/lit8 v9, v2, 0x1

    add-int/2addr v2, v7

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    move v2, v9

    .line 2859
    :goto_31
    if-ge v2, v8, :cond_41

    .line 2860
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2861
    if-ge v3, v4, :cond_41

    .line 2862
    add-int/lit8 v9, v2, 0x1

    add-int/2addr v2, v7

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    move v2, v9

    goto :goto_31

    .line 2865
    :cond_41
    add-int/2addr v7, v2

    iget v3, v5, Lcom/tapjoy/internal/ja;->c:I

    sub-int/2addr v7, v3

    .line 2866
    iget v3, v5, Lcom/tapjoy/internal/ja;->c:I

    add-int/2addr v3, v7

    iput v3, v5, Lcom/tapjoy/internal/ja;->c:I

    .line 2867
    iget-wide v3, p0, Lcom/tapjoy/internal/it;->b:J

    int-to-long v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/tapjoy/internal/it;->b:J

    .line 2869
    goto :goto_10

    :cond_51
    const/16 v5, 0x800

    if-ge v3, v5, :cond_65

    .line 2871
    shr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0xc0

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/it;->a(I)Lcom/tapjoy/internal/it;

    .line 2872
    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/it;->a(I)Lcom/tapjoy/internal/it;

    .line 2873
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2875
    :cond_65
    const v5, 0xd800

    const/16 v6, 0x3f

    if-lt v3, v5, :cond_bc

    const v5, 0xdfff

    if-le v3, v5, :cond_72

    goto :goto_bc

    .line 2885
    :cond_72
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v0, :cond_7b

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_7c

    :cond_7b
    const/4 v8, 0x0

    .line 2886
    :goto_7c
    const v9, 0xdbff

    if-gt v3, v9, :cond_b5

    const v9, 0xdc00

    if-lt v8, v9, :cond_b5

    if-le v8, v5, :cond_89

    goto :goto_b5

    .line 2895
    :cond_89
    const/high16 v5, 0x10000

    const v7, -0xd801

    and-int/2addr v3, v7

    shl-int/lit8 v3, v3, 0xa

    const v7, -0xdc01

    and-int/2addr v7, v8

    or-int/2addr v3, v7

    add-int/2addr v3, v5

    .line 2898
    shr-int/lit8 v5, v3, 0x12

    or-int/lit16 v5, v5, 0xf0

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/it;->a(I)Lcom/tapjoy/internal/it;

    .line 2899
    shr-int/lit8 v5, v3, 0xc

    and-int/2addr v5, v6

    or-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/it;->a(I)Lcom/tapjoy/internal/it;

    .line 2900
    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v6

    or-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/it;->a(I)Lcom/tapjoy/internal/it;

    .line 2901
    and-int/2addr v3, v6

    or-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/it;->a(I)Lcom/tapjoy/internal/it;

    .line 2902
    add-int/lit8 v2, v2, 0x2

    .line 2904
    goto/16 :goto_10

    .line 2887
    :cond_b5
    :goto_b5
    invoke-virtual {p0, v6}, Lcom/tapjoy/internal/it;->a(I)Lcom/tapjoy/internal/it;

    .line 2888
    nop

    .line 2889
    move v2, v7

    goto/16 :goto_10

    .line 2877
    :cond_bc
    :goto_bc
    shr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0xe0

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/it;->a(I)Lcom/tapjoy/internal/it;

    .line 2878
    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v6

    or-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/it;->a(I)Lcom/tapjoy/internal/it;

    .line 2879
    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/it;->a(I)Lcom/tapjoy/internal/it;

    .line 2880
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 2906
    :cond_d4
    nop

    .line 830
    return-object p0

    .line 2840
    :cond_d6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "endIndex > string.length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2841
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2837
    :cond_f9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex < beginIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2834
    :cond_114
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "string == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_11d

    :goto_11c
    throw p1

    :goto_11d
    goto :goto_11c
.end method

.method public final a([BII)Lcom/tapjoy/internal/it;
    .registers 13

    .line 972
    if-eqz p1, :cond_32

    .line 973
    array-length v0, p1

    int-to-long v1, v0

    const-wide/16 v3, 0x0

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lcom/tapjoy/internal/jg;->a(JJJ)V

    .line 975
    add-int/lit8 p3, p3, 0x0

    .line 976
    :goto_d
    if-ge p2, p3, :cond_2c

    .line 977
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/it;->c(I)Lcom/tapjoy/internal/ja;

    move-result-object v0

    .line 979
    sub-int v1, p3, p2

    iget v2, v0, Lcom/tapjoy/internal/ja;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 980
    iget-object v2, v0, Lcom/tapjoy/internal/ja;->a:[B

    iget v3, v0, Lcom/tapjoy/internal/ja;->c:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 982
    add-int/2addr p2, v1

    .line 983
    iget v2, v0, Lcom/tapjoy/internal/ja;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/tapjoy/internal/ja;->c:I

    .line 984
    goto :goto_d

    .line 986
    :cond_2c
    iget-wide p1, p0, Lcom/tapjoy/internal/it;->b:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lcom/tapjoy/internal/it;->b:J

    .line 987
    return-object p0

    .line 972
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3b

    :goto_3a
    throw p1

    :goto_3b
    goto :goto_3a
.end method

.method public final a()Lcom/tapjoy/internal/iu;
    .registers 1

    .line 94
    return-object p0
.end method

.method public final a(J)V
    .registers 6

    .line 102
    iget-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_7

    .line 103
    return-void

    .line 102
    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/tapjoy/internal/it;J)V
    .registers 11

    .line 1213
    if-eqz p1, :cond_fa

    .line 1214
    if-eq p1, p0, :cond_f2

    .line 1215
    iget-wide v0, p1, Lcom/tapjoy/internal/it;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/jg;->a(JJJ)V

    .line 1217
    :goto_c
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_f1

    .line 1219
    iget-object v0, p1, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    iget v0, v0, Lcom/tapjoy/internal/ja;->c:I

    iget-object v1, p1, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    iget v1, v1, Lcom/tapjoy/internal/ja;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-gez v3, :cond_90

    .line 1220
    iget-object v0, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    if-eqz v0, :cond_28

    iget-object v0, v0, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 1221
    :goto_29
    if-eqz v0, :cond_54

    iget-boolean v1, v0, Lcom/tapjoy/internal/ja;->e:Z

    if-eqz v1, :cond_54

    iget v1, v0, Lcom/tapjoy/internal/ja;->c:I

    int-to-long v3, v1

    add-long/2addr v3, p2

    iget-boolean v1, v0, Lcom/tapjoy/internal/ja;->d:Z

    if-eqz v1, :cond_39

    const/4 v1, 0x0

    goto :goto_3b

    :cond_39
    iget v1, v0, Lcom/tapjoy/internal/ja;->b:I

    :goto_3b
    int-to-long v5, v1

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2000

    cmp-long v1, v3, v5

    if-gtz v1, :cond_54

    .line 1224
    iget-object v1, p1, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/internal/ja;->a(Lcom/tapjoy/internal/ja;I)V

    .line 1225
    iget-wide v0, p1, Lcom/tapjoy/internal/it;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lcom/tapjoy/internal/it;->b:J

    .line 1226
    iget-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    .line 1227
    return-void

    .line 1231
    :cond_54
    iget-object v0, p1, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    long-to-int v1, p2

    .line 3113
    if-lez v1, :cond_8a

    iget v3, v0, Lcom/tapjoy/internal/ja;->c:I

    iget v4, v0, Lcom/tapjoy/internal/ja;->b:I

    sub-int/2addr v3, v4

    if-gt v1, v3, :cond_8a

    .line 3121
    const/16 v3, 0x400

    if-lt v1, v3, :cond_6a

    .line 3122
    new-instance v3, Lcom/tapjoy/internal/ja;

    invoke-direct {v3, v0}, Lcom/tapjoy/internal/ja;-><init>(Lcom/tapjoy/internal/ja;)V

    goto :goto_77

    .line 3124
    :cond_6a
    invoke-static {}, Lcom/tapjoy/internal/jb;->a()Lcom/tapjoy/internal/ja;

    move-result-object v3

    .line 3125
    iget-object v4, v0, Lcom/tapjoy/internal/ja;->a:[B

    iget v5, v0, Lcom/tapjoy/internal/ja;->b:I

    iget-object v6, v3, Lcom/tapjoy/internal/ja;->a:[B

    invoke-static {v4, v5, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3128
    :goto_77
    iget v4, v3, Lcom/tapjoy/internal/ja;->b:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/tapjoy/internal/ja;->c:I

    .line 3129
    iget v4, v0, Lcom/tapjoy/internal/ja;->b:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/tapjoy/internal/ja;->b:I

    .line 3130
    iget-object v0, v0, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/ja;->a(Lcom/tapjoy/internal/ja;)Lcom/tapjoy/internal/ja;

    .line 3131
    nop

    .line 1231
    iput-object v3, p1, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    goto :goto_90

    .line 3113
    :cond_8a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1236
    :cond_90
    :goto_90
    iget-object v0, p1, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 1237
    iget v1, v0, Lcom/tapjoy/internal/ja;->c:I

    iget v3, v0, Lcom/tapjoy/internal/ja;->b:I

    sub-int/2addr v1, v3

    int-to-long v3, v1

    .line 1238
    invoke-virtual {v0}, Lcom/tapjoy/internal/ja;->a()Lcom/tapjoy/internal/ja;

    move-result-object v1

    iput-object v1, p1, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 1239
    iget-object v1, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    if-nez v1, :cond_a9

    .line 1240
    iput-object v0, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 1241
    iput-object v0, v0, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    iput-object v0, v0, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    goto :goto_de

    .line 1243
    :cond_a9
    iget-object v1, v1, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    .line 1244
    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/ja;->a(Lcom/tapjoy/internal/ja;)Lcom/tapjoy/internal/ja;

    move-result-object v0

    .line 1245
    nop

    .line 3139
    iget-object v1, v0, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    if-eq v1, v0, :cond_eb

    .line 3140
    iget-object v1, v0, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    iget-boolean v1, v1, Lcom/tapjoy/internal/ja;->e:Z

    if-eqz v1, :cond_de

    .line 3141
    iget v1, v0, Lcom/tapjoy/internal/ja;->c:I

    iget v5, v0, Lcom/tapjoy/internal/ja;->b:I

    sub-int/2addr v1, v5

    .line 3142
    iget-object v5, v0, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    iget v5, v5, Lcom/tapjoy/internal/ja;->c:I

    rsub-int v5, v5, 0x2000

    iget-object v6, v0, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    iget-boolean v6, v6, Lcom/tapjoy/internal/ja;->d:Z

    if-eqz v6, :cond_cc

    goto :goto_d0

    :cond_cc
    iget-object v2, v0, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    iget v2, v2, Lcom/tapjoy/internal/ja;->b:I

    :goto_d0
    add-int/2addr v5, v2

    .line 3143
    if-gt v1, v5, :cond_de

    .line 3144
    iget-object v2, v0, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/ja;->a(Lcom/tapjoy/internal/ja;I)V

    .line 3145
    invoke-virtual {v0}, Lcom/tapjoy/internal/ja;->a()Lcom/tapjoy/internal/ja;

    .line 3146
    invoke-static {v0}, Lcom/tapjoy/internal/jb;->a(Lcom/tapjoy/internal/ja;)V

    .line 1247
    :cond_de
    :goto_de
    iget-wide v0, p1, Lcom/tapjoy/internal/it;->b:J

    sub-long/2addr v0, v3

    iput-wide v0, p1, Lcom/tapjoy/internal/it;->b:J

    .line 1248
    iget-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    .line 1249
    sub-long/2addr p2, v3

    .line 1250
    goto/16 :goto_c

    .line 3139
    :cond_eb
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1251
    :cond_f1
    return-void

    .line 1214
    :cond_f2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1213
    :cond_fa
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_103

    :goto_102
    throw p1

    :goto_103
    goto :goto_102
.end method

.method public final b(Lcom/tapjoy/internal/it;J)J
    .registers 9

    .line 1254
    if-eqz p1, :cond_2a

    .line 1255
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1a

    .line 1256
    iget-wide v2, p0, Lcom/tapjoy/internal/it;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_11

    const-wide/16 p1, -0x1

    return-wide p1

    .line 1257
    :cond_11
    cmp-long v0, p2, v2

    if-lez v0, :cond_16

    move-wide p2, v2

    .line 1258
    :cond_16
    invoke-virtual {p1, p0, p2, p3}, Lcom/tapjoy/internal/it;->a(Lcom/tapjoy/internal/it;J)V

    .line 1259
    return-wide p2

    .line 1255
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "byteCount < 0: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1254
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)Lcom/tapjoy/internal/it;
    .registers 7

    .line 1044
    invoke-static {p1}, Lcom/tapjoy/internal/jg;->a(I)I

    move-result p1

    .line 3031
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/it;->c(I)Lcom/tapjoy/internal/ja;

    move-result-object v0

    .line 3032
    iget-object v1, v0, Lcom/tapjoy/internal/ja;->a:[B

    .line 3033
    iget v2, v0, Lcom/tapjoy/internal/ja;->c:I

    .line 3034
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 3035
    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 3036
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 3037
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    .line 3038
    iput v2, v0, Lcom/tapjoy/internal/ja;->c:I

    .line 3039
    iget-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    .line 3040
    nop

    .line 1044
    return-object p0
.end method

.method public final synthetic b(Lcom/tapjoy/internal/iw;)Lcom/tapjoy/internal/iu;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/it;->a(Lcom/tapjoy/internal/iw;)Lcom/tapjoy/internal/it;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Ljava/lang/String;)Lcom/tapjoy/internal/iu;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/it;->a(Ljava/lang/String;)Lcom/tapjoy/internal/it;

    move-result-object p1

    return-object p1
.end method

.method public final b(J)Lcom/tapjoy/internal/iw;
    .registers 4

    .line 529
    new-instance v0, Lcom/tapjoy/internal/iw;

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/it;->g(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/iw;-><init>([B)V

    return-object v0
.end method

.method public final b()Z
    .registers 6

    .line 98
    iget-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final c()J
    .registers 6

    .line 260
    iget-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    .line 261
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 264
    :cond_9
    iget-object v2, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    iget-object v2, v2, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    .line 265
    iget v3, v2, Lcom/tapjoy/internal/ja;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1e

    iget-boolean v3, v2, Lcom/tapjoy/internal/ja;->e:Z

    if-eqz v3, :cond_1e

    .line 266
    iget v3, v2, Lcom/tapjoy/internal/ja;->c:I

    iget v2, v2, Lcom/tapjoy/internal/ja;->b:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    .line 269
    :cond_1e
    return-wide v0
.end method

.method final c(I)Lcom/tapjoy/internal/ja;
    .registers 5

    .line 1148
    if-lez p1, :cond_29

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_29

    .line 1150
    iget-object v1, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    if-nez v1, :cond_15

    .line 1151
    invoke-static {}, Lcom/tapjoy/internal/jb;->a()Lcom/tapjoy/internal/ja;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 1152
    iput-object p1, p1, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    iput-object p1, p1, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    return-object p1

    .line 1155
    :cond_15
    iget-object v1, v1, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    .line 1156
    iget v2, v1, Lcom/tapjoy/internal/ja;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_20

    iget-boolean p1, v1, Lcom/tapjoy/internal/ja;->e:Z

    if-nez p1, :cond_28

    .line 1157
    :cond_20
    invoke-static {}, Lcom/tapjoy/internal/jb;->a()Lcom/tapjoy/internal/ja;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/ja;->a(Lcom/tapjoy/internal/ja;)Lcom/tapjoy/internal/ja;

    move-result-object v1

    .line 1159
    :cond_28
    return-object v1

    .line 1148
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final c(J)Ljava/lang/String;
    .registers 10

    .line 594
    sget-object v0, Lcom/tapjoy/internal/jg;->a:Ljava/nio/charset/Charset;

    .line 2606
    iget-wide v1, p0, Lcom/tapjoy/internal/it;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p1

    invoke-static/range {v1 .. v6}, Lcom/tapjoy/internal/jg;->a(JJJ)V

    .line 2607
    if-eqz v0, :cond_6a

    .line 2608
    const-wide/32 v1, 0x7fffffff

    cmp-long v3, p1, v1

    if-gtz v3, :cond_5a

    .line 2611
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_1c

    const-string p1, ""

    return-object p1

    .line 2613
    :cond_1c
    iget-object v1, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 2614
    iget v2, v1, Lcom/tapjoy/internal/ja;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    iget v4, v1, Lcom/tapjoy/internal/ja;->c:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_33

    .line 2616
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/it;->g(J)[B

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 2619
    :cond_33
    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/tapjoy/internal/ja;->a:[B

    iget v4, v1, Lcom/tapjoy/internal/ja;->b:I

    long-to-int v5, p1

    invoke-direct {v2, v3, v4, v5, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2620
    iget v0, v1, Lcom/tapjoy/internal/ja;->b:I

    int-to-long v3, v0

    add-long/2addr v3, p1

    long-to-int v0, v3

    iput v0, v1, Lcom/tapjoy/internal/ja;->b:I

    .line 2621
    iget-wide v3, p0, Lcom/tapjoy/internal/it;->b:J

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lcom/tapjoy/internal/it;->b:J

    .line 2623
    iget p1, v1, Lcom/tapjoy/internal/ja;->b:I

    iget p2, v1, Lcom/tapjoy/internal/ja;->c:I

    if-ne p1, p2, :cond_58

    .line 2624
    invoke-virtual {v1}, Lcom/tapjoy/internal/ja;->a()Lcom/tapjoy/internal/ja;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 2625
    invoke-static {v1}, Lcom/tapjoy/internal/jb;->a(Lcom/tapjoy/internal/ja;)V

    .line 2628
    :cond_58
    nop

    .line 594
    return-object v2

    .line 2609
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2607
    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 47
    invoke-virtual {p0}, Lcom/tapjoy/internal/it;->i()Lcom/tapjoy/internal/it;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .registers 1

    .line 1499
    return-void
.end method

.method public final d()B
    .registers 10

    .line 273
    iget-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2a

    .line 275
    iget-object v0, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 276
    iget v1, v0, Lcom/tapjoy/internal/ja;->b:I

    .line 277
    iget v2, v0, Lcom/tapjoy/internal/ja;->c:I

    .line 279
    iget-object v3, v0, Lcom/tapjoy/internal/ja;->a:[B

    .line 280
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    .line 281
    iget-wide v5, p0, Lcom/tapjoy/internal/it;->b:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/tapjoy/internal/it;->b:J

    .line 283
    if-ne v4, v2, :cond_27

    .line 284
    invoke-virtual {v0}, Lcom/tapjoy/internal/ja;->a()Lcom/tapjoy/internal/ja;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 285
    invoke-static {v0}, Lcom/tapjoy/internal/jb;->a(Lcom/tapjoy/internal/ja;)V

    goto :goto_29

    .line 287
    :cond_27
    iput v4, v0, Lcom/tapjoy/internal/ja;->b:I

    .line 290
    :goto_29
    return v1

    .line 273
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic d(I)Lcom/tapjoy/internal/iu;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/it;->b(I)Lcom/tapjoy/internal/it;

    move-result-object p1

    return-object p1
.end method

.method public final d(J)V
    .registers 9

    .line 807
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_41

    .line 808
    iget-object v0, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    if-eqz v0, :cond_3b

    .line 810
    iget v0, v0, Lcom/tapjoy/internal/ja;->c:I

    iget-object v1, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    iget v1, v1, Lcom/tapjoy/internal/ja;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 811
    iget-wide v2, p0, Lcom/tapjoy/internal/it;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tapjoy/internal/it;->b:J

    .line 812
    sub-long/2addr p1, v4

    .line 813
    iget-object v0, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    iget v2, v0, Lcom/tapjoy/internal/ja;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/tapjoy/internal/ja;->b:I

    .line 815
    iget-object v0, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    iget v0, v0, Lcom/tapjoy/internal/ja;->b:I

    iget-object v1, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    iget v1, v1, Lcom/tapjoy/internal/ja;->c:I

    if-ne v0, v1, :cond_3a

    .line 816
    iget-object v0, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 817
    invoke-virtual {v0}, Lcom/tapjoy/internal/ja;->a()Lcom/tapjoy/internal/ja;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 818
    invoke-static {v0}, Lcom/tapjoy/internal/jb;->a(Lcom/tapjoy/internal/ja;)V

    .line 820
    :cond_3a
    goto :goto_0

    .line 808
    :cond_3b
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 821
    :cond_41
    return-void
.end method

.method public final e()I
    .registers 9

    .line 333
    iget-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6c

    .line 335
    iget-object v0, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 336
    iget v1, v0, Lcom/tapjoy/internal/ja;->b:I

    .line 337
    iget v4, v0, Lcom/tapjoy/internal/ja;->c:I

    .line 340
    sub-int v5, v4, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_35

    .line 341
    invoke-virtual {p0}, Lcom/tapjoy/internal/it;->d()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 342
    invoke-virtual {p0}, Lcom/tapjoy/internal/it;->d()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 343
    invoke-virtual {p0}, Lcom/tapjoy/internal/it;->d()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 344
    invoke-virtual {p0}, Lcom/tapjoy/internal/it;->d()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 347
    :cond_35
    iget-object v5, v0, Lcom/tapjoy/internal/ja;->a:[B

    .line 348
    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 352
    iget-wide v5, p0, Lcom/tapjoy/internal/it;->b:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Lcom/tapjoy/internal/it;->b:J

    .line 354
    if-ne v7, v4, :cond_69

    .line 355
    invoke-virtual {v0}, Lcom/tapjoy/internal/ja;->a()Lcom/tapjoy/internal/ja;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 356
    invoke-static {v0}, Lcom/tapjoy/internal/jb;->a(Lcom/tapjoy/internal/ja;)V

    goto :goto_6b

    .line 358
    :cond_69
    iput v7, v0, Lcom/tapjoy/internal/ja;->b:I

    .line 361
    :goto_6b
    return v1

    .line 333
    :cond_6c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tapjoy/internal/it;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(J)Lcom/tapjoy/internal/it;
    .registers 12

    .line 1065
    invoke-static {p1, p2}, Lcom/tapjoy/internal/jg;->a(J)J

    move-result-wide p1

    .line 3048
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/it;->c(I)Lcom/tapjoy/internal/ja;

    move-result-object v1

    .line 3049
    iget-object v2, v1, Lcom/tapjoy/internal/ja;->a:[B

    .line 3050
    iget v3, v1, Lcom/tapjoy/internal/ja;->c:I

    .line 3051
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v3

    .line 3052
    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v4

    .line 3053
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v3

    .line 3054
    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v4

    .line 3055
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v3

    .line 3056
    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v4

    .line 3057
    add-int/lit8 v4, v3, 0x1

    ushr-long v5, p1, v0

    and-long/2addr v5, v7

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 3058
    add-int/lit8 v0, v4, 0x1

    and-long/2addr p1, v7

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v2, v4

    .line 3059
    iput v0, v1, Lcom/tapjoy/internal/ja;->c:I

    .line 3060
    iget-wide p1, p0, Lcom/tapjoy/internal/it;->b:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tapjoy/internal/it;->b:J

    .line 3061
    nop

    .line 1065
    return-object p0
.end method

.method public final synthetic e(I)Lcom/tapjoy/internal/iu;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/it;->a(I)Lcom/tapjoy/internal/it;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 16
    .param p1, "o"    # Ljava/lang/Object;

    .line 1545
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1546
    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/it;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1547
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/it;

    .line 1548
    iget-wide v3, p0, Lcom/tapjoy/internal/it;->b:J

    iget-wide v5, v1, Lcom/tapjoy/internal/it;->b:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_16

    return v2

    .line 1549
    :cond_16
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1d

    return v0

    .line 1551
    :cond_1d
    iget-object v3, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 1552
    iget-object v1, v1, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 1553
    iget v4, v3, Lcom/tapjoy/internal/ja;->b:I

    .line 1554
    iget v7, v1, Lcom/tapjoy/internal/ja;->b:I

    .line 1556
    nop

    :goto_26
    iget-wide v8, p0, Lcom/tapjoy/internal/it;->b:J

    cmp-long v10, v5, v8

    if-gez v10, :cond_63

    .line 1557
    iget v8, v3, Lcom/tapjoy/internal/ja;->c:I

    sub-int/2addr v8, v4

    iget v9, v1, Lcom/tapjoy/internal/ja;->c:I

    sub-int/2addr v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v8, v8

    .line 1559
    const/4 v10, 0x0

    :goto_38
    int-to-long v11, v10

    cmp-long v13, v11, v8

    if-gez v13, :cond_51

    .line 1560
    iget-object v11, v3, Lcom/tapjoy/internal/ja;->a:[B

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v11, v4

    iget-object v11, v1, Lcom/tapjoy/internal/ja;->a:[B

    add-int/lit8 v13, v7, 0x1

    aget-byte v7, v11, v7

    if-eq v4, v7, :cond_4c

    return v2

    .line 1559
    :cond_4c
    add-int/lit8 v10, v10, 0x1

    move v4, v12

    move v7, v13

    goto :goto_38

    .line 1563
    :cond_51
    iget v10, v3, Lcom/tapjoy/internal/ja;->c:I

    if-ne v4, v10, :cond_59

    .line 1564
    iget-object v3, v3, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    .line 1565
    iget v4, v3, Lcom/tapjoy/internal/ja;->b:I

    .line 1568
    :cond_59
    iget v10, v1, Lcom/tapjoy/internal/ja;->c:I

    if-ne v7, v10, :cond_61

    .line 1569
    iget-object v1, v1, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    .line 1570
    iget v7, v1, Lcom/tapjoy/internal/ja;->b:I

    .line 1556
    :cond_61
    add-long/2addr v5, v8

    goto :goto_26

    .line 1574
    :cond_63
    return v0
.end method

.method public final f()I
    .registers 2

    .line 403
    invoke-virtual {p0}, Lcom/tapjoy/internal/it;->e()I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/internal/jg;->a(I)I

    move-result v0

    return v0
.end method

.method public final synthetic f(J)Lcom/tapjoy/internal/iu;
    .registers 3

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/internal/it;->e(J)Lcom/tapjoy/internal/it;

    move-result-object p1

    return-object p1
.end method

.method public final flush()V
    .registers 1

    .line 1496
    return-void
.end method

.method public final g()J
    .registers 16

    .line 407
    nop

    .line 2365
    iget-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    const-wide/16 v2, 0x8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_91

    .line 2367
    iget-object v0, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 2368
    iget v1, v0, Lcom/tapjoy/internal/ja;->b:I

    .line 2369
    iget v4, v0, Lcom/tapjoy/internal/ja;->c:I

    .line 2372
    sub-int v5, v4, v1

    const/16 v6, 0x20

    const/16 v7, 0x8

    if-ge v5, v7, :cond_2b

    .line 2373
    invoke-virtual {p0}, Lcom/tapjoy/internal/it;->e()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    shl-long/2addr v0, v6

    .line 2374
    invoke-virtual {p0}, Lcom/tapjoy/internal/it;->e()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_8c

    .line 2377
    :cond_2b
    iget-object v5, v0, Lcom/tapjoy/internal/ja;->a:[B

    .line 2378
    add-int/lit8 v8, v1, 0x1

    aget-byte v1, v5, v1

    int-to-long v9, v1

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    const/16 v1, 0x38

    shl-long/2addr v9, v1

    add-int/lit8 v1, v8, 0x1

    aget-byte v8, v5, v8

    int-to-long v13, v8

    and-long/2addr v13, v11

    const/16 v8, 0x30

    shl-long/2addr v13, v8

    or-long/2addr v9, v13

    add-int/lit8 v8, v1, 0x1

    aget-byte v1, v5, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    const/16 v1, 0x28

    shl-long/2addr v13, v1

    or-long/2addr v9, v13

    add-int/lit8 v1, v8, 0x1

    aget-byte v8, v5, v8

    int-to-long v13, v8

    and-long/2addr v13, v11

    shl-long/2addr v13, v6

    or-long/2addr v9, v13

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    const/16 v1, 0x18

    shl-long/2addr v13, v1

    or-long/2addr v9, v13

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, v5, v6

    int-to-long v13, v6

    and-long/2addr v13, v11

    const/16 v6, 0x10

    shl-long/2addr v13, v6

    or-long/2addr v9, v13

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    shl-long v7, v13, v7

    or-long/2addr v7, v9

    add-int/lit8 v1, v6, 0x1

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v11

    or-long/2addr v5, v7

    .line 2386
    iget-wide v7, p0, Lcom/tapjoy/internal/it;->b:J

    sub-long/2addr v7, v2

    iput-wide v7, p0, Lcom/tapjoy/internal/it;->b:J

    .line 2388
    if-ne v1, v4, :cond_89

    .line 2389
    invoke-virtual {v0}, Lcom/tapjoy/internal/ja;->a()Lcom/tapjoy/internal/ja;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 2390
    invoke-static {v0}, Lcom/tapjoy/internal/jb;->a(Lcom/tapjoy/internal/ja;)V

    goto :goto_8b

    .line 2392
    :cond_89
    iput v1, v0, Lcom/tapjoy/internal/ja;->b:I

    .line 2395
    :goto_8b
    move-wide v0, v5

    .line 407
    :goto_8c
    invoke-static {v0, v1}, Lcom/tapjoy/internal/jg;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 2365
    :cond_91
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 8: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tapjoy/internal/it;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()[B
    .registers 3

    .line 744
    :try_start_0
    iget-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/it;->g(J)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 745
    :catch_7
    move-exception v0

    .line 746
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final hashCode()I
    .registers 6

    .line 1578
    iget-object v0, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 1579
    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 1580
    :cond_6
    const/4 v1, 0x1

    .line 1582
    :goto_7
    iget v2, v0, Lcom/tapjoy/internal/ja;->b:I

    iget v3, v0, Lcom/tapjoy/internal/ja;->c:I

    :goto_b
    if-ge v2, v3, :cond_17

    .line 1583
    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lcom/tapjoy/internal/ja;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    .line 1582
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1585
    :cond_17
    iget-object v0, v0, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    .line 1586
    iget-object v2, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    if-ne v0, v2, :cond_1e

    .line 1587
    return v1

    .line 1586
    :cond_1e
    goto :goto_7
.end method

.method public final i()Lcom/tapjoy/internal/it;
    .registers 7

    .line 1600
    new-instance v0, Lcom/tapjoy/internal/it;

    invoke-direct {v0}, Lcom/tapjoy/internal/it;-><init>()V

    .line 1601
    iget-wide v1, p0, Lcom/tapjoy/internal/it;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_e

    return-object v0

    .line 1603
    :cond_e
    new-instance v1, Lcom/tapjoy/internal/ja;

    iget-object v2, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/ja;-><init>(Lcom/tapjoy/internal/ja;)V

    iput-object v1, v0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 1604
    iput-object v1, v1, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    iput-object v1, v1, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    .line 1605
    iget-object v1, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    :goto_1d
    iget-object v1, v1, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    iget-object v2, p0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    if-eq v1, v2, :cond_30

    .line 1606
    iget-object v2, v0, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    iget-object v2, v2, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    new-instance v3, Lcom/tapjoy/internal/ja;

    invoke-direct {v3, v1}, Lcom/tapjoy/internal/ja;-><init>(Lcom/tapjoy/internal/ja;)V

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/ja;->a(Lcom/tapjoy/internal/ja;)Lcom/tapjoy/internal/ja;

    .line 1605
    goto :goto_1d

    .line 1608
    :cond_30
    iget-wide v1, p0, Lcom/tapjoy/internal/it;->b:J

    iput-wide v1, v0, Lcom/tapjoy/internal/it;->b:J

    .line 1609
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1595
    nop

    .line 3614
    iget-wide v0, p0, Lcom/tapjoy/internal/it;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1a

    .line 3617
    long-to-int v1, v0

    .line 3624
    if-nez v1, :cond_10

    sget-object v0, Lcom/tapjoy/internal/iw;->b:Lcom/tapjoy/internal/iw;

    goto :goto_15

    .line 3625
    :cond_10
    new-instance v0, Lcom/tapjoy/internal/jc;

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/jc;-><init>(Lcom/tapjoy/internal/it;I)V

    .line 1595
    :goto_15
    invoke-virtual {v0}, Lcom/tapjoy/internal/iw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3615
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tapjoy/internal/it;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
