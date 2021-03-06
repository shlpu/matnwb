function nwbExport(nwb, filename)
%NWBEXPORT Writes an NWB file.
%  nwbRead(nwb,filename) Writes the nwb object to a file at filename.
%
%  Example:
%    %Generate Matlab code for the NWB objects from the core schema.
%    %This only needs to be done once.
%    generateCore('schema\core\nwb.namespace.yaml');
%    %Create some fake fata and write
%    nwb = nwbfile;
%    nwb.epochs = types.untyped.Group;
%    nwb.epochs.stim = types.Epoch;
%    nwbExport(nwb, 'epoch.nwb');
%
%  See also GENERATECORE, GENERATEEXTENSIONS, NWBFILE, NWBREAD
validateattributes(nwb, {'types.core.NWBFile'}, {});
validateattributes(filename, {'cell', 'string', 'char'}, {});

if iscellstr(filename)
    fn = filename{1};
elseif isstring(filename)
    fn = filename(1);
else
    fn = filename;
end

export(nwb, fn);
end