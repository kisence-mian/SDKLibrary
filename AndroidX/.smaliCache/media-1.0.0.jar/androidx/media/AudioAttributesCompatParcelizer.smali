.class public final Landroidx/media/AudioAttributesCompatParcelizer;
.super Ljava/lang/Object;
.source "AudioAttributesCompatParcelizer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media/AudioAttributesCompat;
    .registers 4
    .param p0, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 11
    new-instance v0, Landroidx/media/AudioAttributesCompat;

    invoke-direct {v0}, Landroidx/media/AudioAttributesCompat;-><init>()V

    .line 12
    .local v0, "obj":Landroidx/media/AudioAttributesCompat;
    iget-object v1, v0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    check-cast v1, Landroidx/media/AudioAttributesImpl;

    iput-object v1, v0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    .line 13
    return-object v0
.end method

.method public static write(Landroidx/media/AudioAttributesCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .registers 4
    .param p0, "obj"    # Landroidx/media/AudioAttributesCompat;
    .param p1, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 18
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V

    .line 19
    return-void
.end method
