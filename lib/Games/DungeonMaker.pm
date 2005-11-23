# This file was automatically generated by SWIG
package Games::DungeonMaker;
require Exporter;
require DynaLoader;
@ISA = qw(Exporter DynaLoader);
package Games::DungeonMakerc;
bootstrap Games::DungeonMaker;
package Games::DungeonMaker;
@EXPORT = qw( );
our @EXPORT_OK = qw($OPEN $CLOSED $G_OPEN $G_CLOSED $NJ_OPEN $NJ_CLOSED $NJ_G_OPEN $NJ_G_CLOSED $IR_OPEN $IT_OPEN $IA_OPEN $H_DOOR $V_DOOR $MOB1 $MOB2 $MOB3 $TREAS1 $TREAS2 $TREAS3 $COLUMN);
our %EXPORT_TAGS =	(
						SquareData => [qw($OPEN $CLOSED $G_OPEN $G_CLOSED $NJ_OPEN $NJ_CLOSED $NJ_G_OPEN $NJ_G_CLOSED $IR_OPEN $IT_OPEN $IA_OPEN $H_DOOR $V_DOOR $MOB1 $MOB2 $MOB3 $TREAS1 $TREAS2 $TREAS3 $COLUMN)],
					);

our $VERSION='0.01';

# ------- HELPER FUNCTIONS --------
sub new {
	my $proto = shift;
	my $class = ref($proto) || $proto;
	
	my ($designTxt, $seed) = @_;
	return undef if ( (! defined $designTxt) || ($designTxt =~ /^\s*$/) );
	$seed = time() if ( (! defined $seed) || ($seed !~ /^\d+$/) );
	
	my $self = {};
	$self->{seed} = $seed;
	my $config = Games::DungeonMaker::Config->new() || return undef;
	$config->AcceptDesign($designTxt) || return undef;
	$self->{config} = $config;
	my $dm = Games::DungeonMaker::DungeonMaker->new($config, $seed) || return undef;
	eval { $dm->generate() };
	return undef if $@;
	$self->{dungeon} = $dm;
	
	bless ($self, $class);
	return $self;
}

sub plonk {
	my ($self) = @_;
	eval { $self->{dungeon}->PlonkDownStuff() };
	return undef if $@;
	eval { $self->{dungeon}->PutPlonkOnMap() };
	return undef if $@;
	return 1;
}

sub maxX {
	my ($self) = @_;
	return $self->{dungeon}->GetDimX()-1;
}

sub maxY {
	my ($self) = @_;
	return $self->{dungeon}->GetDimY()-1;
}

sub getMap {
	my ($self, $x, $y) = @_;
	return $self->{dungeon}->GetMap($x, $y);
}

# ---------- BASE METHODS -------------

package Games::DungeonMaker;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package Games::DungeonMaker;

*TransformDirection = *Games::DungeonMakerc::TransformDirection;

############# Class : Games::DungeonMaker::pair_ii ##############

package Games::DungeonMaker::pair_ii;
@ISA = qw( Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = Games::DungeonMakerc::new_pair_ii(@_);
    bless $self, $pkg if defined($self);
}

*swig_first_get = *Games::DungeonMakerc::pair_ii_first_get;
*swig_first_set = *Games::DungeonMakerc::pair_ii_first_set;
*swig_second_get = *Games::DungeonMakerc::pair_ii_second_get;
*swig_second_set = *Games::DungeonMakerc::pair_ii_second_set;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_pair_ii($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Games::DungeonMaker::IntCoordinate ##############

package Games::DungeonMaker::IntCoordinate;
@ISA = qw( Games::DungeonMaker::pair_ii Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
*ShowX = *Games::DungeonMakerc::IntCoordinate_ShowX;
*ShowY = *Games::DungeonMakerc::IntCoordinate_ShowY;
sub new {
    my $pkg = shift;
    my $self = Games::DungeonMakerc::new_IntCoordinate(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_IntCoordinate($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Games::DungeonMaker::SquareInfo ##############

package Games::DungeonMaker::SquareInfo;
@ISA = qw( Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
*swig_xCoord_get = *Games::DungeonMakerc::SquareInfo_xCoord_get;
*swig_xCoord_set = *Games::DungeonMakerc::SquareInfo_xCoord_set;
*swig_yCoord_get = *Games::DungeonMakerc::SquareInfo_yCoord_get;
*swig_yCoord_set = *Games::DungeonMakerc::SquareInfo_yCoord_set;
*swig_type_get = *Games::DungeonMakerc::SquareInfo_type_get;
*swig_type_set = *Games::DungeonMakerc::SquareInfo_type_set;
sub new {
    my $pkg = shift;
    my $self = Games::DungeonMakerc::new_SquareInfo(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_SquareInfo($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Games::DungeonMaker::SpawnInfo ##############

package Games::DungeonMaker::SpawnInfo;
@ISA = qw( Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
*swig_xCoord_get = *Games::DungeonMakerc::SpawnInfo_xCoord_get;
*swig_xCoord_set = *Games::DungeonMakerc::SpawnInfo_xCoord_set;
*swig_yCoord_get = *Games::DungeonMakerc::SpawnInfo_yCoord_get;
*swig_yCoord_set = *Games::DungeonMakerc::SpawnInfo_yCoord_set;
*swig_type_get = *Games::DungeonMakerc::SpawnInfo_type_get;
*swig_type_set = *Games::DungeonMakerc::SpawnInfo_type_set;
sub new {
    my $pkg = shift;
    my $self = Games::DungeonMakerc::new_SpawnInfo(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_SpawnInfo($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Games::DungeonMaker::TripleInt ##############

package Games::DungeonMaker::TripleInt;
@ISA = qw( Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
*swig_sm_get = *Games::DungeonMakerc::TripleInt_sm_get;
*swig_sm_set = *Games::DungeonMakerc::TripleInt_sm_set;
*swig_md_get = *Games::DungeonMakerc::TripleInt_md_get;
*swig_md_set = *Games::DungeonMakerc::TripleInt_md_set;
*swig_lg_get = *Games::DungeonMakerc::TripleInt_lg_get;
*swig_lg_set = *Games::DungeonMakerc::TripleInt_lg_set;
sub new {
    my $pkg = shift;
    my $self = Games::DungeonMakerc::new_TripleInt(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_TripleInt($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Games::DungeonMaker::FlagsDirs ##############

package Games::DungeonMaker::FlagsDirs;
@ISA = qw( Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
*swig_checked_get = *Games::DungeonMakerc::FlagsDirs_checked_get;
*swig_checked_set = *Games::DungeonMakerc::FlagsDirs_checked_set;
sub new {
    my $pkg = shift;
    my $self = Games::DungeonMakerc::new_FlagsDirs(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_FlagsDirs($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Games::DungeonMaker::RectFill ##############

package Games::DungeonMaker::RectFill;
@ISA = qw( Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
*swig_startX_get = *Games::DungeonMakerc::RectFill_startX_get;
*swig_startX_set = *Games::DungeonMakerc::RectFill_startX_set;
*swig_startY_get = *Games::DungeonMakerc::RectFill_startY_get;
*swig_startY_set = *Games::DungeonMakerc::RectFill_startY_set;
*swig_endX_get = *Games::DungeonMakerc::RectFill_endX_get;
*swig_endX_set = *Games::DungeonMakerc::RectFill_endX_set;
*swig_endY_get = *Games::DungeonMakerc::RectFill_endY_get;
*swig_endY_set = *Games::DungeonMakerc::RectFill_endY_set;
*swig_type_get = *Games::DungeonMakerc::RectFill_type_get;
*swig_type_set = *Games::DungeonMakerc::RectFill_type_set;
sub new {
    my $pkg = shift;
    my $self = Games::DungeonMakerc::new_RectFill(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_RectFill($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Games::DungeonMaker::CrawlerData ##############

package Games::DungeonMaker::CrawlerData;
@ISA = qw( Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
*swig_loc_get = *Games::DungeonMakerc::CrawlerData_loc_get;
*swig_loc_set = *Games::DungeonMakerc::CrawlerData_loc_set;
*swig_dir_get = *Games::DungeonMakerc::CrawlerData_dir_get;
*swig_dir_set = *Games::DungeonMakerc::CrawlerData_dir_set;
*swig_intDir_get = *Games::DungeonMakerc::CrawlerData_intDir_get;
*swig_intDir_set = *Games::DungeonMakerc::CrawlerData_intDir_set;
*swig_age_get = *Games::DungeonMakerc::CrawlerData_age_get;
*swig_age_set = *Games::DungeonMakerc::CrawlerData_age_set;
*swig_maxAge_get = *Games::DungeonMakerc::CrawlerData_maxAge_get;
*swig_maxAge_set = *Games::DungeonMakerc::CrawlerData_maxAge_set;
*swig_gen_get = *Games::DungeonMakerc::CrawlerData_gen_get;
*swig_gen_set = *Games::DungeonMakerc::CrawlerData_gen_set;
*swig_sL_get = *Games::DungeonMakerc::CrawlerData_sL_get;
*swig_sL_set = *Games::DungeonMakerc::CrawlerData_sL_set;
*swig_op_get = *Games::DungeonMakerc::CrawlerData_op_get;
*swig_op_set = *Games::DungeonMakerc::CrawlerData_op_set;
*swig_cW_get = *Games::DungeonMakerc::CrawlerData_cW_get;
*swig_cW_set = *Games::DungeonMakerc::CrawlerData_cW_set;
*swig_sSSP_get = *Games::DungeonMakerc::CrawlerData_sSSP_get;
*swig_sSSP_set = *Games::DungeonMakerc::CrawlerData_sSSP_set;
*swig_sDSP_get = *Games::DungeonMakerc::CrawlerData_sDSP_get;
*swig_sDSP_set = *Games::DungeonMakerc::CrawlerData_sDSP_set;
*swig_tSSP_get = *Games::DungeonMakerc::CrawlerData_tSSP_get;
*swig_tSSP_set = *Games::DungeonMakerc::CrawlerData_tSSP_set;
*swig_tDSP_get = *Games::DungeonMakerc::CrawlerData_tDSP_get;
*swig_tDSP_set = *Games::DungeonMakerc::CrawlerData_tDSP_set;
*swig_cDP_get = *Games::DungeonMakerc::CrawlerData_cDP_get;
*swig_cDP_set = *Games::DungeonMakerc::CrawlerData_cDP_set;
sub new {
    my $pkg = shift;
    my $self = Games::DungeonMakerc::new_CrawlerData(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_CrawlerData($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Games::DungeonMaker::TunnelerData ##############

package Games::DungeonMaker::TunnelerData;
@ISA = qw( Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
*swig_loc_get = *Games::DungeonMakerc::TunnelerData_loc_get;
*swig_loc_set = *Games::DungeonMakerc::TunnelerData_loc_set;
*swig_dir_get = *Games::DungeonMakerc::TunnelerData_dir_get;
*swig_dir_set = *Games::DungeonMakerc::TunnelerData_dir_set;
*swig_intDir_get = *Games::DungeonMakerc::TunnelerData_intDir_get;
*swig_intDir_set = *Games::DungeonMakerc::TunnelerData_intDir_set;
*swig_age_get = *Games::DungeonMakerc::TunnelerData_age_get;
*swig_age_set = *Games::DungeonMakerc::TunnelerData_age_set;
*swig_maxAge_get = *Games::DungeonMakerc::TunnelerData_maxAge_get;
*swig_maxAge_set = *Games::DungeonMakerc::TunnelerData_maxAge_set;
*swig_gen_get = *Games::DungeonMakerc::TunnelerData_gen_get;
*swig_gen_set = *Games::DungeonMakerc::TunnelerData_gen_set;
*swig_sL_get = *Games::DungeonMakerc::TunnelerData_sL_get;
*swig_sL_set = *Games::DungeonMakerc::TunnelerData_sL_set;
*swig_tW_get = *Games::DungeonMakerc::TunnelerData_tW_get;
*swig_tW_set = *Games::DungeonMakerc::TunnelerData_tW_set;
*swig_sDSP_get = *Games::DungeonMakerc::TunnelerData_sDSP_get;
*swig_sDSP_set = *Games::DungeonMakerc::TunnelerData_sDSP_set;
*swig_tDSP_get = *Games::DungeonMakerc::TunnelerData_tDSP_get;
*swig_tDSP_set = *Games::DungeonMakerc::TunnelerData_tDSP_set;
*swig_cDP_get = *Games::DungeonMakerc::TunnelerData_cDP_get;
*swig_cDP_set = *Games::DungeonMakerc::TunnelerData_cDP_set;
*swig_mRRP_get = *Games::DungeonMakerc::TunnelerData_mRRP_get;
*swig_mRRP_set = *Games::DungeonMakerc::TunnelerData_mRRP_set;
*swig_mRLP_get = *Games::DungeonMakerc::TunnelerData_mRLP_get;
*swig_mRLP_set = *Games::DungeonMakerc::TunnelerData_mRLP_set;
*swig_jP_get = *Games::DungeonMakerc::TunnelerData_jP_get;
*swig_jP_set = *Games::DungeonMakerc::TunnelerData_jP_set;
sub new {
    my $pkg = shift;
    my $self = Games::DungeonMakerc::new_TunnelerData(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_TunnelerData($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Games::DungeonMaker::Room ##############

package Games::DungeonMaker::Room;
@ISA = qw( Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = Games::DungeonMakerc::new_Room(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_Room($self);
        delete $OWNER{$self};
    }
}

*AddSquare = *Games::DungeonMakerc::Room_AddSquare;
*GetInside = *Games::DungeonMakerc::Room_GetInside;
*SetInDungeon = *Games::DungeonMakerc::Room_SetInDungeon;
*GetInDungeon = *Games::DungeonMakerc::Room_GetInDungeon;
*GetSize = *Games::DungeonMakerc::Room_GetSize;
*GetRandomSquare = *Games::DungeonMakerc::Room_GetRandomSquare;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Games::DungeonMaker::RoomComp ##############

package Games::DungeonMaker::RoomComp;
@ISA = qw( Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = Games::DungeonMakerc::new_RoomComp(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_RoomComp($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Games::DungeonMaker::Config ##############

package Games::DungeonMaker::Config;
@ISA = qw( Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
*swig_dX_get = *Games::DungeonMakerc::Config_dX_get;
*swig_dX_set = *Games::DungeonMakerc::Config_dX_set;
*swig_dY_get = *Games::DungeonMakerc::Config_dY_get;
*swig_dY_set = *Games::DungeonMakerc::Config_dY_set;
*swig_bg_get = *Games::DungeonMakerc::Config_bg_get;
*swig_bg_set = *Games::DungeonMakerc::Config_bg_set;
*swig_op_get = *Games::DungeonMakerc::Config_op_get;
*swig_op_set = *Games::DungeonMakerc::Config_op_set;
*swig_des_get = *Games::DungeonMakerc::Config_des_get;
*swig_des_set = *Games::DungeonMakerc::Config_des_set;
*swig_SL_get = *Games::DungeonMakerc::Config_SL_get;
*swig_SL_set = *Games::DungeonMakerc::Config_SL_set;
*swig_CW_get = *Games::DungeonMakerc::Config_CW_get;
*swig_CW_set = *Games::DungeonMakerc::Config_CW_set;
*swig_MAC_get = *Games::DungeonMakerc::Config_MAC_get;
*swig_MAC_set = *Games::DungeonMakerc::Config_MAC_set;
*swig_MAT_get = *Games::DungeonMakerc::Config_MAT_get;
*swig_MAT_set = *Games::DungeonMakerc::Config_MAT_set;
*swig_Crawlers_get = *Games::DungeonMakerc::Config_Crawlers_get;
*swig_Crawlers_set = *Games::DungeonMakerc::Config_Crawlers_set;
*swig_Tunnelers_get = *Games::DungeonMakerc::Config_Tunnelers_get;
*swig_Tunnelers_set = *Games::DungeonMakerc::Config_Tunnelers_set;
*swig_CrawlerPairs_get = *Games::DungeonMakerc::Config_CrawlerPairs_get;
*swig_CrawlerPairs_set = *Games::DungeonMakerc::Config_CrawlerPairs_set;
*swig_BDPFGT_get = *Games::DungeonMakerc::Config_BDPFGT_get;
*swig_BDPFGT_set = *Games::DungeonMakerc::Config_BDPFGT_set;
*swig_BDPFGC_get = *Games::DungeonMakerc::Config_BDPFGC_get;
*swig_BDPFGC_set = *Games::DungeonMakerc::Config_BDPFGC_set;
*swig_BDPFGR_get = *Games::DungeonMakerc::Config_BDPFGR_get;
*swig_BDPFGR_set = *Games::DungeonMakerc::Config_BDPFGR_set;
*swig_RSPS_get = *Games::DungeonMakerc::Config_RSPS_get;
*swig_RSPS_set = *Games::DungeonMakerc::Config_RSPS_set;
*swig_RSPB_get = *Games::DungeonMakerc::Config_RSPB_get;
*swig_RSPB_set = *Games::DungeonMakerc::Config_RSPB_set;
*swig_mut_get = *Games::DungeonMakerc::Config_mut_get;
*swig_mut_set = *Games::DungeonMakerc::Config_mut_set;
*swig_nHP_get = *Games::DungeonMakerc::Config_nHP_get;
*swig_nHP_set = *Games::DungeonMakerc::Config_nHP_set;
*swig_jD_get = *Games::DungeonMakerc::Config_jD_get;
*swig_jD_set = *Games::DungeonMakerc::Config_jD_set;
*swig_minRS_get = *Games::DungeonMakerc::Config_minRS_get;
*swig_minRS_set = *Games::DungeonMakerc::Config_minRS_set;
*swig_medRS_get = *Games::DungeonMakerc::Config_medRS_get;
*swig_medRS_set = *Games::DungeonMakerc::Config_medRS_set;
*swig_larRS_get = *Games::DungeonMakerc::Config_larRS_get;
*swig_larRS_set = *Games::DungeonMakerc::Config_larRS_set;
*swig_maxRS_get = *Games::DungeonMakerc::Config_maxRS_get;
*swig_maxRS_set = *Games::DungeonMakerc::Config_maxRS_set;
*swig_numSmallL_get = *Games::DungeonMakerc::Config_numSmallL_get;
*swig_numSmallL_set = *Games::DungeonMakerc::Config_numSmallL_set;
*swig_numMedL_get = *Games::DungeonMakerc::Config_numMedL_get;
*swig_numMedL_set = *Games::DungeonMakerc::Config_numMedL_set;
*swig_numLarL_get = *Games::DungeonMakerc::Config_numLarL_get;
*swig_numLarL_set = *Games::DungeonMakerc::Config_numLarL_set;
*swig_numSmallD_get = *Games::DungeonMakerc::Config_numSmallD_get;
*swig_numSmallD_set = *Games::DungeonMakerc::Config_numSmallD_set;
*swig_numMedD_get = *Games::DungeonMakerc::Config_numMedD_get;
*swig_numMedD_set = *Games::DungeonMakerc::Config_numMedD_set;
*swig_numLarD_get = *Games::DungeonMakerc::Config_numLarD_get;
*swig_numLarD_set = *Games::DungeonMakerc::Config_numLarD_set;
*swig_rCPG_get = *Games::DungeonMakerc::Config_rCPG_get;
*swig_rCPG_set = *Games::DungeonMakerc::Config_rCPG_set;
*swig_rC_sSSP_get = *Games::DungeonMakerc::Config_rC_sSSP_get;
*swig_rC_sSSP_set = *Games::DungeonMakerc::Config_rC_sSSP_set;
*swig_rC_sDSP_get = *Games::DungeonMakerc::Config_rC_sDSP_get;
*swig_rC_sDSP_set = *Games::DungeonMakerc::Config_rC_sDSP_set;
*swig_rC_tSSP_get = *Games::DungeonMakerc::Config_rC_tSSP_get;
*swig_rC_tSSP_set = *Games::DungeonMakerc::Config_rC_tSSP_set;
*swig_rC_tDSP_get = *Games::DungeonMakerc::Config_rC_tDSP_get;
*swig_rC_tDSP_set = *Games::DungeonMakerc::Config_rC_tDSP_set;
*swig_rC_cDP_get = *Games::DungeonMakerc::Config_rC_cDP_get;
*swig_rC_cDP_set = *Games::DungeonMakerc::Config_rC_cDP_set;
*swig_jP_get = *Games::DungeonMakerc::Config_jP_get;
*swig_jP_set = *Games::DungeonMakerc::Config_jP_set;
*swig_sUpP_get = *Games::DungeonMakerc::Config_sUpP_get;
*swig_sUpP_set = *Games::DungeonMakerc::Config_sUpP_set;
*swig_sDownP_get = *Games::DungeonMakerc::Config_sDownP_get;
*swig_sDownP_set = *Games::DungeonMakerc::Config_sDownP_set;
*swig_pat_get = *Games::DungeonMakerc::Config_pat_get;
*swig_pat_set = *Games::DungeonMakerc::Config_pat_set;
*swig_tJD_get = *Games::DungeonMakerc::Config_tJD_get;
*swig_tJD_set = *Games::DungeonMakerc::Config_tJD_set;
*swig_sUGD_get = *Games::DungeonMakerc::Config_sUGD_get;
*swig_sUGD_set = *Games::DungeonMakerc::Config_sUGD_set;
*swig_cIT_get = *Games::DungeonMakerc::Config_cIT_get;
*swig_cIT_set = *Games::DungeonMakerc::Config_cIT_set;
*swig_rAR_get = *Games::DungeonMakerc::Config_rAR_get;
*swig_rAR_set = *Games::DungeonMakerc::Config_rAR_set;
*swig_aRP_get = *Games::DungeonMakerc::Config_aRP_get;
*swig_aRP_set = *Games::DungeonMakerc::Config_aRP_set;
*swig_gSUOAR_get = *Games::DungeonMakerc::Config_gSUOAR_get;
*swig_gSUOAR_set = *Games::DungeonMakerc::Config_gSUOAR_set;
*swig_crIT_get = *Games::DungeonMakerc::Config_crIT_get;
*swig_crIT_set = *Games::DungeonMakerc::Config_crIT_set;
*swig_crIA_get = *Games::DungeonMakerc::Config_crIA_get;
*swig_crIA_set = *Games::DungeonMakerc::Config_crIA_set;
*swig_sCIT_get = *Games::DungeonMakerc::Config_sCIT_get;
*swig_sCIT_set = *Games::DungeonMakerc::Config_sCIT_set;
*swig_showM_get = *Games::DungeonMakerc::Config_showM_get;
*swig_showM_set = *Games::DungeonMakerc::Config_showM_set;
*swig_storeM_get = *Games::DungeonMakerc::Config_storeM_get;
*swig_storeM_set = *Games::DungeonMakerc::Config_storeM_set;
*swig_TCS_get = *Games::DungeonMakerc::Config_TCS_get;
*swig_TCS_set = *Games::DungeonMakerc::Config_TCS_set;
*swig_randSeed_get = *Games::DungeonMakerc::Config_randSeed_get;
*swig_randSeed_set = *Games::DungeonMakerc::Config_randSeed_set;
*swig_MLR_get = *Games::DungeonMakerc::Config_MLR_get;
*swig_MLR_set = *Games::DungeonMakerc::Config_MLR_set;
*swig_MLO_get = *Games::DungeonMakerc::Config_MLO_get;
*swig_MLO_set = *Games::DungeonMakerc::Config_MLO_set;
*swig_MDR_get = *Games::DungeonMakerc::Config_MDR_get;
*swig_MDR_set = *Games::DungeonMakerc::Config_MDR_set;
*swig_MDO_get = *Games::DungeonMakerc::Config_MDO_get;
*swig_MDO_set = *Games::DungeonMakerc::Config_MDO_set;
*swig_TIL_get = *Games::DungeonMakerc::Config_TIL_get;
*swig_TIL_set = *Games::DungeonMakerc::Config_TIL_set;
*swig_TID_get = *Games::DungeonMakerc::Config_TID_get;
*swig_TID_set = *Games::DungeonMakerc::Config_TID_set;
*swig_gSMOBLR_get = *Games::DungeonMakerc::Config_gSMOBLR_get;
*swig_gSMOBLR_set = *Games::DungeonMakerc::Config_gSMOBLR_set;
*swig_gSMOBDR_get = *Games::DungeonMakerc::Config_gSMOBDR_get;
*swig_gSMOBDR_set = *Games::DungeonMakerc::Config_gSMOBDR_set;
*swig_gSTreasL_get = *Games::DungeonMakerc::Config_gSTreasL_get;
*swig_gSTreasL_set = *Games::DungeonMakerc::Config_gSTreasL_set;
*swig_gSTreasD_get = *Games::DungeonMakerc::Config_gSTreasD_get;
*swig_gSTreasD_set = *Games::DungeonMakerc::Config_gSTreasD_set;
*swig_gSVMOBLR_get = *Games::DungeonMakerc::Config_gSVMOBLR_get;
*swig_gSVMOBLR_set = *Games::DungeonMakerc::Config_gSVMOBLR_set;
*swig_gSVMOBDR_get = *Games::DungeonMakerc::Config_gSVMOBDR_get;
*swig_gSVMOBDR_set = *Games::DungeonMakerc::Config_gSVMOBDR_set;
*swig_gSVTreasL_get = *Games::DungeonMakerc::Config_gSVTreasL_get;
*swig_gSVTreasL_set = *Games::DungeonMakerc::Config_gSVTreasL_set;
*swig_gSVTreasD_get = *Games::DungeonMakerc::Config_gSVTreasD_get;
*swig_gSVTreasD_set = *Games::DungeonMakerc::Config_gSVTreasD_set;
*swig_iARP_get = *Games::DungeonMakerc::Config_iARP_get;
*swig_iARP_set = *Games::DungeonMakerc::Config_iARP_set;
*swig_tCG_get = *Games::DungeonMakerc::Config_tCG_get;
*swig_tCG_set = *Games::DungeonMakerc::Config_tCG_set;
*swig_tCCP_get = *Games::DungeonMakerc::Config_tCCP_get;
*swig_tCCP_set = *Games::DungeonMakerc::Config_tCCP_set;
*swig_lCT_get = *Games::DungeonMakerc::Config_lCT_get;
*swig_lCT_set = *Games::DungeonMakerc::Config_lCT_set;
*swig_gDLC_get = *Games::DungeonMakerc::Config_gDLC_get;
*swig_gDLC_set = *Games::DungeonMakerc::Config_gDLC_set;
sub new {
    my $pkg = shift;
    my $self = Games::DungeonMakerc::new_Config(@_);
    bless $self, $pkg if defined($self);
}

*ReadDesign = *Games::DungeonMakerc::Config_ReadDesign;
*AcceptDesign = *Games::DungeonMakerc::Config_AcceptDesign;
*ValidateDirections = *Games::DungeonMakerc::Config_ValidateDirections;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_Config($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Games::DungeonMaker::Builder ##############

package Games::DungeonMaker::Builder;
@ISA = qw( Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_Builder($self);
        delete $OWNER{$self};
    }
}

*StepAhead = *Games::DungeonMakerc::Builder_StepAhead;
*GetAge = *Games::DungeonMakerc::Builder_GetAge;
*GetGeneration = *Games::DungeonMakerc::Builder_GetGeneration;
*AdvanceAge = *Games::DungeonMakerc::Builder_AdvanceAge;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Games::DungeonMaker::WallCrawler ##############

package Games::DungeonMaker::WallCrawler;
@ISA = qw( Games::DungeonMaker::Builder Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_WallCrawler($self);
        delete $OWNER{$self};
    }
}

sub new {
    my $pkg = shift;
    my $self = Games::DungeonMakerc::new_WallCrawler(@_);
    bless $self, $pkg if defined($self);
}

*FrontFree = *Games::DungeonMakerc::WallCrawler_FrontFree;
*StepAhead = *Games::DungeonMakerc::WallCrawler_StepAhead;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Games::DungeonMaker::Tunneler ##############

package Games::DungeonMaker::Tunneler;
@ISA = qw( Games::DungeonMaker::Builder Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_Tunneler($self);
        delete $OWNER{$self};
    }
}

sub new {
    my $pkg = shift;
    my $self = Games::DungeonMakerc::new_Tunneler(@_);
    bless $self, $pkg if defined($self);
}

*FrontFree = *Games::DungeonMakerc::Tunneler_FrontFree;
*StepAhead = *Games::DungeonMakerc::Tunneler_StepAhead;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Games::DungeonMaker::Roomie ##############

package Games::DungeonMaker::Roomie;
@ISA = qw( Games::DungeonMaker::Builder Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_Roomie($self);
        delete $OWNER{$self};
    }
}

sub new {
    my $pkg = shift;
    my $self = Games::DungeonMakerc::new_Roomie(@_);
    bless $self, $pkg if defined($self);
}

*StepAhead = *Games::DungeonMakerc::Roomie_StepAhead;
*FrontFree = *Games::DungeonMakerc::Roomie_FrontFree;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : Games::DungeonMaker::DungeonMaker ##############

package Games::DungeonMaker::DungeonMaker;
@ISA = qw( Games::DungeonMaker );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = Games::DungeonMakerc::new_DungeonMaker(@_);
    bless $self, $pkg if defined($self);
}

*generate = *Games::DungeonMakerc::DungeonMaker_generate;
*SetMap = *Games::DungeonMakerc::DungeonMaker_SetMap;
*GetMap = *Games::DungeonMakerc::DungeonMaker_GetMap;
*SetRect = *Games::DungeonMakerc::DungeonMaker_SetRect;
*GetDimX = *Games::DungeonMakerc::DungeonMaker_GetDimX;
*GetDimY = *Games::DungeonMakerc::DungeonMaker_GetDimY;
*GetActiveGeneration = *Games::DungeonMakerc::DungeonMaker_GetActiveGeneration;
*GetMinRoomSize = *Games::DungeonMakerc::DungeonMaker_GetMinRoomSize;
*GetMaxRoomSize = *Games::DungeonMakerc::DungeonMaker_GetMaxRoomSize;
*GetBackground = *Games::DungeonMakerc::DungeonMaker_GetBackground;
*GetMovie = *Games::DungeonMakerc::DungeonMaker_GetMovie;
*ShowMovie = *Games::DungeonMakerc::DungeonMaker_ShowMovie;
*StoreMovie = *Games::DungeonMakerc::DungeonMaker_StoreMovie;
*GetDesign = *Games::DungeonMakerc::DungeonMaker_GetDesign;
*GetRooms = *Games::DungeonMakerc::DungeonMaker_GetRooms;
*GetMOBs = *Games::DungeonMakerc::DungeonMaker_GetMOBs;
*GetTreas = *Games::DungeonMakerc::DungeonMaker_GetTreas;
*GetRoomSizeProbS = *Games::DungeonMakerc::DungeonMaker_GetRoomSizeProbS;
*GetRoomSizeProbB = *Games::DungeonMakerc::DungeonMaker_GetRoomSizeProbB;
*WantsMoreRoomsL = *Games::DungeonMakerc::DungeonMaker_WantsMoreRoomsL;
*WantsMoreRoomsD = *Games::DungeonMakerc::DungeonMaker_WantsMoreRoomsD;
*BuiltRoomD = *Games::DungeonMakerc::DungeonMaker_BuiltRoomD;
*SortRooms = *Games::DungeonMakerc::DungeonMaker_SortRooms;
*GetChangedThisIteration = *Games::DungeonMakerc::DungeonMaker_GetChangedThisIteration;
*GetBabyDelayProbsForGenerationC = *Games::DungeonMakerc::DungeonMaker_GetBabyDelayProbsForGenerationC;
*GetBabyDelayProbsForGenerationR = *Games::DungeonMakerc::DungeonMaker_GetBabyDelayProbsForGenerationR;
*GetBabyDelayProbsForGenerationT = *Games::DungeonMakerc::DungeonMaker_GetBabyDelayProbsForGenerationT;
*GetGenSpeeUpOnAnteRoom = *Games::DungeonMakerc::DungeonMaker_GetGenSpeeUpOnAnteRoom;
*Mutate = *Games::DungeonMakerc::DungeonMaker_Mutate;
*Mutate2 = *Games::DungeonMakerc::DungeonMaker_Mutate2;
*GetNoHeadingProb = *Games::DungeonMakerc::DungeonMaker_GetNoHeadingProb;
*GetStepLength = *Games::DungeonMakerc::DungeonMaker_GetStepLength;
*GetCorrWidth = *Games::DungeonMakerc::DungeonMaker_GetCorrWidth;
*GetMaxAgeC = *Games::DungeonMakerc::DungeonMaker_GetMaxAgeC;
*GetMaxAgeT = *Games::DungeonMakerc::DungeonMaker_GetMaxAgeT;
*GetAnteRoomProb = *Games::DungeonMakerc::DungeonMaker_GetAnteRoomProb;
*GetJoinDist = *Games::DungeonMakerc::DungeonMaker_GetJoinDist;
*GetSizeUpGenDelay = *Games::DungeonMakerc::DungeonMaker_GetSizeUpGenDelay;
*GetTunnelJoinDist = *Games::DungeonMakerc::DungeonMaker_GetTunnelJoinDist;
*CreateCrawler = *Games::DungeonMakerc::DungeonMaker_CreateCrawler;
*CreateTunneler = *Games::DungeonMakerc::DungeonMaker_CreateTunneler;
*CreateRoomie = *Games::DungeonMakerc::DungeonMaker_CreateRoomie;
*MakeIteration = *Games::DungeonMakerc::DungeonMaker_MakeIteration;
*AdvanceGeneration = *Games::DungeonMakerc::DungeonMaker_AdvanceGeneration;
*CreateRoom = *Games::DungeonMakerc::DungeonMaker_CreateRoom;
*GetJoinPref = *Games::DungeonMakerc::DungeonMaker_GetJoinPref;
*GetSizeUpProb = *Games::DungeonMakerc::DungeonMaker_GetSizeUpProb;
*GetSizeDownProb = *Games::DungeonMakerc::DungeonMaker_GetSizeDownProb;
*GetPatience = *Games::DungeonMakerc::DungeonMaker_GetPatience;
*GetRoomAspectRatio = *Games::DungeonMakerc::DungeonMaker_GetRoomAspectRatio;
*WeWantColumnsInTunnels = *Games::DungeonMakerc::DungeonMaker_WeWantColumnsInTunnels;
*CrawlersInTunnels = *Games::DungeonMakerc::DungeonMaker_CrawlersInTunnels;
*CrawlersInAnterooms = *Games::DungeonMakerc::DungeonMaker_CrawlersInAnterooms;
*SeedCrawlersInTunnels = *Games::DungeonMakerc::DungeonMaker_SeedCrawlersInTunnels;
*GetTunnelCrawlerGeneration = *Games::DungeonMakerc::DungeonMaker_GetTunnelCrawlerGeneration;
*GetLastChanceRoomsRightProb = *Games::DungeonMakerc::DungeonMaker_GetLastChanceRoomsRightProb;
*GetLastChanceRoomsLeftProb = *Games::DungeonMakerc::DungeonMaker_GetLastChanceRoomsLeftProb;
*GetLastChanceChangeDirProb = *Games::DungeonMakerc::DungeonMaker_GetLastChanceChangeDirProb;
*GetLastChanceStraightSpawnProb = *Games::DungeonMakerc::DungeonMaker_GetLastChanceStraightSpawnProb;
*GetLastChanceTurnSpawnProb = *Games::DungeonMakerc::DungeonMaker_GetLastChanceTurnSpawnProb;
*GetLastChanceGenDelay = *Games::DungeonMakerc::DungeonMaker_GetLastChanceGenDelay;
*AddRoom = *Games::DungeonMakerc::DungeonMaker_AddRoom;
*NumberOfRooms = *Games::DungeonMakerc::DungeonMaker_NumberOfRooms;
*RoomNumber = *Games::DungeonMakerc::DungeonMaker_RoomNumber;
*PlonkDownStuff = *Games::DungeonMakerc::DungeonMaker_PlonkDownStuff;
*PutPlonkOnMap = *Games::DungeonMakerc::DungeonMaker_PutPlonkOnMap;
*IsChecked = *Games::DungeonMakerc::DungeonMaker_IsChecked;
*SetChecked = *Games::DungeonMakerc::DungeonMaker_SetChecked;
*SetUnchecked = *Games::DungeonMakerc::DungeonMaker_SetUnchecked;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Games::DungeonMakerc::delete_DungeonMaker($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


# ------- VARIABLE STUBS --------

package Games::DungeonMaker;

*DUNGEONMAKER_H_INCLUDED = *Games::DungeonMakerc::DUNGEONMAKER_H_INCLUDED;
*OPEN = *Games::DungeonMakerc::OPEN;
*CLOSED = *Games::DungeonMakerc::CLOSED;
*G_OPEN = *Games::DungeonMakerc::G_OPEN;
*G_CLOSED = *Games::DungeonMakerc::G_CLOSED;
*NJ_OPEN = *Games::DungeonMakerc::NJ_OPEN;
*NJ_CLOSED = *Games::DungeonMakerc::NJ_CLOSED;
*NJ_G_OPEN = *Games::DungeonMakerc::NJ_G_OPEN;
*NJ_G_CLOSED = *Games::DungeonMakerc::NJ_G_CLOSED;
*IR_OPEN = *Games::DungeonMakerc::IR_OPEN;
*IT_OPEN = *Games::DungeonMakerc::IT_OPEN;
*IA_OPEN = *Games::DungeonMakerc::IA_OPEN;
*H_DOOR = *Games::DungeonMakerc::H_DOOR;
*V_DOOR = *Games::DungeonMakerc::V_DOOR;
*MOB1 = *Games::DungeonMakerc::MOB1;
*MOB2 = *Games::DungeonMakerc::MOB2;
*MOB3 = *Games::DungeonMakerc::MOB3;
*TREAS1 = *Games::DungeonMakerc::TREAS1;
*TREAS2 = *Games::DungeonMakerc::TREAS2;
*TREAS3 = *Games::DungeonMakerc::TREAS3;
*COLUMN = *Games::DungeonMakerc::COLUMN;
*NO = *Games::DungeonMakerc::NO;
*EA = *Games::DungeonMakerc::EA;
*SO = *Games::DungeonMakerc::SO;
*WE = *Games::DungeonMakerc::WE;
*NE = *Games::DungeonMakerc::NE;
*SE = *Games::DungeonMakerc::SE;
*SW = *Games::DungeonMakerc::SW;
*NW = *Games::DungeonMakerc::NW;
*XX = *Games::DungeonMakerc::XX;
*SMALL = *Games::DungeonMakerc::SMALL;
*MEDIUM = *Games::DungeonMakerc::MEDIUM;
*LARGE = *Games::DungeonMakerc::LARGE;
1;
