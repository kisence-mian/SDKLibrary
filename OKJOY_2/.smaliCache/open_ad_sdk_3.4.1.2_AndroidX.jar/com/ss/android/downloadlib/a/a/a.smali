.class public abstract Lcom/ss/android/downloadlib/a/a/a;
.super Ljava/lang/Object;
.source "AutoParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;I)I
    .registers 3

    .line 17
    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method private static a(Landroid/os/Parcel;II)V
    .registers 4

    .line 23
    const v0, 0xffff

    if-lt p2, v0, :cond_f

    .line 24
    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    return-void

    .line 28
    :cond_f
    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    return-void
.end method

.method public static a(Landroid/os/Parcel;Ljava/lang/reflect/Field;ILandroid/os/Parcelable;IZ)V
    .registers 6

    .line 70
    if-nez p3, :cond_9

    .line 71
    if-eqz p5, :cond_8

    .line 72
    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/os/Parcel;II)V

    .line 74
    :cond_8
    return-void

    .line 76
    :cond_9
    invoke-static {p0, p2}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 78
    invoke-interface {p3, p0, p4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/a/a/a;->b(Landroid/os/Parcel;I)V

    .line 80
    return-void
.end method

.method public static a(Landroid/os/Parcel;Ljava/lang/reflect/Field;ILjava/lang/Integer;IZ)V
    .registers 6

    .line 61
    if-nez p3, :cond_3

    .line 62
    return-void

    .line 64
    :cond_3
    const/4 p1, 0x4

    invoke-static {p0, p2, p1}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/os/Parcel;II)V

    .line 66
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return-void
.end method

.method public static a(Landroid/os/Parcel;Ljava/lang/reflect/Field;ILjava/lang/Object;IZ)V
    .registers 17

    .line 84
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_15

    .line 85
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/os/Parcel;Ljava/lang/reflect/Field;ILjava/lang/String;IZ)V

    goto :goto_4b

    .line 86
    :cond_15
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_3f

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_26

    goto :goto_3f

    .line 88
    :cond_26
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 89
    move-object v4, p3

    check-cast v4, Landroid/os/Parcelable;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/os/Parcel;Ljava/lang/reflect/Field;ILandroid/os/Parcelable;IZ)V

    goto :goto_4b

    .line 87
    :cond_3f
    :goto_3f
    move-object v8, p3

    check-cast v8, Ljava/lang/Integer;

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move v9, p4

    move/from16 v10, p5

    invoke-static/range {v5 .. v10}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/os/Parcel;Ljava/lang/reflect/Field;ILjava/lang/Integer;IZ)V

    .line 93
    :cond_4b
    :goto_4b
    return-void
.end method

.method public static a(Landroid/os/Parcel;Ljava/lang/reflect/Field;ILjava/lang/String;IZ)V
    .registers 6

    .line 54
    invoke-static {p0, p2}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 56
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/a/a/a;->b(Landroid/os/Parcel;I)V

    .line 58
    return-void
.end method

.method private static a(Lcom/ss/android/downloadlib/a/a/a;Landroid/os/Parcel;Ljava/lang/Class;)V
    .registers 7

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    .line 41
    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/os/Parcel;I)I

    move-result p2

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    array-length v1, p0

    if-lez v1, :cond_2c

    .line 44
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v1

    .line 45
    const-string v2, "s"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    const-string v3, "aw"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_2c
    array-length p0, p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 50
    invoke-static {p1, p2}, Lcom/ss/android/downloadlib/a/a/a;->b(Landroid/os/Parcel;I)V

    .line 51
    return-void
.end method

.method private static a(Lcom/ss/android/downloadlib/a/a/a;Landroid/os/Parcel;Ljava/lang/reflect/Field;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 96
    const-class v0, Lcom/ss/android/downloadlib/a/a/h;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a/a/h;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/a/a/h;->b()I

    move-result v3

    .line 97
    const-class v0, Lcom/ss/android/downloadlib/a/a/h;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a/a/h;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/a/a/h;->a()Z

    move-result v6

    .line 98
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 100
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/os/Parcel;Ljava/lang/reflect/Field;ILjava/lang/Object;IZ)V

    .line 101
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    return-void
.end method

.method private static b(Landroid/os/Parcel;I)V
    .registers 4

    .line 32
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 33
    add-int/lit8 v1, p1, -0x4

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    sub-int p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 106
    const/16 v1, 0x4f45

    invoke-static {p1, v1}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    .line 107
    invoke-static {p0, p1, v0}, Lcom/ss/android/downloadlib/a/a/a;->a(Lcom/ss/android/downloadlib/a/a/a;Landroid/os/Parcel;Ljava/lang/Class;)V

    .line 108
    :goto_d
    if-eqz v0, :cond_2e

    .line 109
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 111
    const/4 v3, 0x0

    :goto_14
    array-length v4, v2

    if-ge v3, v4, :cond_29

    .line 112
    aget-object v4, v2, v3

    .line 113
    const-class v5, Lcom/ss/android/downloadlib/a/a/h;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 115
    :try_start_21
    invoke-static {p0, p1, v4, p2}, Lcom/ss/android/downloadlib/a/a/a;->a(Lcom/ss/android/downloadlib/a/a/a;Landroid/os/Parcel;Ljava/lang/reflect/Field;I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    .line 118
    goto :goto_26

    .line 116
    :catchall_25
    move-exception v4

    .line 111
    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 121
    :cond_29
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 122
    goto :goto_d

    .line 123
    :cond_2e
    invoke-static {p1, v1}, Lcom/ss/android/downloadlib/a/a/a;->b(Landroid/os/Parcel;I)V

    .line 124
    return-void
.end method
