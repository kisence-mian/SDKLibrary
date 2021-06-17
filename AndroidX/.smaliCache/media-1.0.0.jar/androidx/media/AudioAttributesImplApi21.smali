.class Landroidx/media/AudioAttributesImplApi21;
.super Ljava/lang/Object;
.source "AudioAttributesImplApi21.java"

# interfaces
.implements Landroidx/media/AudioAttributesImpl;


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioAttributesCompat21"

.field static sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;


# instance fields
.field mAudioAttributes:Landroid/media/AudioAttributes;

.field mLegacyStreamType:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    .line 50
    return-void
.end method

.method constructor <init>(Landroid/media/AudioAttributes;)V
    .registers 3
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 53
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroidx/media/AudioAttributesImplApi21;-><init>(Landroid/media/AudioAttributes;I)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/media/AudioAttributes;I)V
    .registers 4
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p2, "explicitLegacyStream"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    .line 56
    iput-object p1, p0, Landroidx/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 57
    iput p2, p0, Landroidx/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    .line 58
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media/AudioAttributesImpl;
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 166
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 167
    return-object v0

    .line 169
    :cond_4
    nop

    .line 170
    const-string v1, "androidx.media.audio_attrs.FRAMEWORKS"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 171
    .local v1, "frameworkAttrs":Landroid/media/AudioAttributes;
    if-nez v1, :cond_10

    .line 172
    return-object v0

    .line 174
    :cond_10
    const/4 v0, -0x1

    const-string v2, "androidx.media.audio_attrs.LEGACY_STREAM_TYPE"

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 176
    .local v0, "legacyStream":I
    new-instance v2, Landroidx/media/AudioAttributesImplApi21;

    invoke-direct {v2, v1, v0}, Landroidx/media/AudioAttributesImplApi21;-><init>(Landroid/media/AudioAttributes;I)V

    return-object v2
.end method

.method static getAudioAttributesToLegacyStreamTypeMethod()Ljava/lang/reflect/Method;
    .registers 5

    .line 64
    :try_start_0
    sget-object v0, Landroidx/media/AudioAttributesImplApi21;->sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;

    if-nez v0, :cond_16

    .line 65
    const-class v0, Landroid/media/AudioAttributes;

    const-string v1, "toLegacyStreamType"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/media/AudioAttributes;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/media/AudioAttributesImplApi21;->sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_16} :catch_1a

    .line 70
    :cond_16
    nop

    .line 71
    sget-object v0, Landroidx/media/AudioAttributesImplApi21;->sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;

    return-object v0

    .line 68
    :catch_1a
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 150
    instance-of v0, p1, Landroidx/media/AudioAttributesImplApi21;

    if-nez v0, :cond_6

    .line 151
    const/4 v0, 0x0

    return v0

    .line 153
    :cond_6
    move-object v0, p1

    check-cast v0, Landroidx/media/AudioAttributesImplApi21;

    .line 154
    .local v0, "that":Landroidx/media/AudioAttributesImplApi21;
    iget-object v1, p0, Landroidx/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget-object v2, v0, Landroidx/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAudioAttributes()Ljava/lang/Object;
    .registers 2

    .line 78
    iget-object v0, p0, Landroidx/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getContentType()I
    .registers 2

    .line 117
    iget-object v0, p0, Landroidx/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v0

    return v0
.end method

.method public getFlags()I
    .registers 2

    .line 127
    iget-object v0, p0, Landroidx/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    return v0
.end method

.method public getLegacyStreamType()I
    .registers 8

    .line 91
    iget v0, p0, Landroidx/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 92
    return v0

    .line 94
    :cond_6
    invoke-static {}, Landroidx/media/AudioAttributesImplApi21;->getAudioAttributesToLegacyStreamTypeMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 95
    .local v0, "frameworkMethod":Ljava/lang/reflect/Method;
    const-string v2, "AudioAttributesCompat21"

    if-nez v0, :cond_27

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No AudioAttributes#toLegacyStreamType() on API: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v1

    .line 101
    :cond_27
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_29
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 102
    .local v3, "result":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_3b} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_3b} :catch_3c

    return v1

    .line 103
    .end local v3    # "result":Ljava/lang/Object;
    :catch_3c
    move-exception v3

    goto :goto_3f

    :catch_3e
    move-exception v3

    .line 104
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    :goto_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLegacyStreamType() failed on API: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    return v1
.end method

.method public getRawLegacyStreamType()I
    .registers 2

    .line 112
    iget v0, p0, Landroidx/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    return v0
.end method

.method public getUsage()I
    .registers 2

    .line 122
    iget-object v0, p0, Landroidx/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    return v0
.end method

.method public getVolumeControlStream()I
    .registers 4

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    .line 84
    iget-object v0, p0, Landroidx/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v0

    return v0

    .line 86
    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroidx/media/AudioAttributesImplApi21;->getFlags()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media/AudioAttributesImplApi21;->getUsage()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 145
    iget-object v0, p0, Landroidx/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->hashCode()I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    const-string v2, "androidx.media.audio_attrs.FRAMEWORKS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    iget v1, p0, Landroidx/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 135
    const-string v2, "androidx.media.audio_attrs.LEGACY_STREAM_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    :cond_16
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioAttributesCompat: audioattributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
